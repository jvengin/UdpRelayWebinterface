// main.cpp
#include "UdpControl/RelayController.h"
#include <drogon/drogon.h>
#include <boost/asio.hpp>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/ini_parser.hpp>
#include <chrono>
#include <thread>
#include <unistd.h>
#include <spdlog/spdlog.h>
#include "spdlog/sinks/stdout_color_sinks.h"
#include <spdlog/spdlog.h>

// Function to create and send response
void sendResponse(const std::string& status, drogon::HttpStatusCode code, std::function<void (const drogon::HttpResponsePtr &)> &&callback) {
    auto resp = drogon::HttpResponse::newHttpResponse();
    resp->setStatusCode(code);
    resp->setBody(status);
    callback(resp);
}

int main() {
    boost::asio::io_context io_context;
    boost::property_tree::ptree pt;
    boost::property_tree::ini_parser::read_ini("relayConfig.ini", pt);

    std::string host = pt.get<std::string>("relay.relayHost");
    std::string relayPort = pt.get<std::string>("relay.relayPort");
    uint16_t listenPort = pt.get<uint16_t>("application.listenPort");
    std::string logLevel = pt.get<std::string>("application.logLevel");

    // Create a logger that logs to stdout
    auto console = spdlog::stdout_color_mt("console");      

    // Map of string log levels to spdlog::level::level_enum values
    std::map<std::string, spdlog::level::level_enum> logLevels = {
        {"trace", spdlog::level::trace},
        {"debug", spdlog::level::debug},
        {"info", spdlog::level::info},
        {"warn", spdlog::level::warn},
        {"err", spdlog::level::err},
        {"critical", spdlog::level::critical},
        {"off", spdlog::level::off},
    };

    // Set the log level
    console->set_level(logLevels[logLevel]);

    char cwd[1024];
    if (getcwd(cwd, sizeof(cwd)) != NULL) {
        console->debug("Current working directory: {}", cwd);
    } else {
        console->critical("Could not read documentroot, getcwd() error.");
    }
    
    RelayController relayController(io_context, host, relayPort, console);
    relayController.get_status(); // initialize status
    
    //Set HTTP listener address and port
    drogon::app().addListener("0.0.0.0", listenPort);
    //Load config file
    drogon::app().loadConfigFile("drogonConfig.json");

   
    // Debug print the document root
    console->debug("Document root: {}", drogon::app().getDocumentRoot());;
    std::string documentRoot = drogon::app().getDocumentRoot();
    for (const auto & entry : std::filesystem::directory_iterator(documentRoot)) {
        console->debug("{}", entry.path().u8string());;
    }

    drogon::app().registerHandler("/status/{1}", 
        [&relayController, console](const drogon::HttpRequestPtr &req,
                    std::function<void (const drogon::HttpResponsePtr &)> &&callback, std::string ignored) {
            std::string status = relayController.get_status();
            console->debug("Status: {}", status);
            if (status.empty()) {
                relayController.update_status();
                status = relayController.get_status();
                console->debug("Refreshed status due to being empty, updated status: {}", status);
            }
            sendResponse(status, drogon::k200OK, std::move(callback));
        });

    drogon::app().registerHandler("/relay/{1}/{2}",
        [&relayController, console](const drogon::HttpRequestPtr &req,
                    std::function<void (const drogon::HttpResponsePtr &)> &&callback,
                    std::string relay,
                    std::string action) {
            try {
                int relay_num = std::stoi(relay);
                if (action == "on") {
                    relayController.switch_relay_on(relay_num);
                } else if (action == "off") {
                    relayController.switch_relay_off(relay_num);
                } else {
                    console->debug("Invalid action: {}", action );
                    sendResponse("Invalid action", drogon::k400BadRequest, std::move(callback));
                    return;
                }

                console->debug("Switching relay {} {}", relay_num, action);
                std::string status = relayController.get_status();
                console->debug("Status: ", status);

                sendResponse(status, drogon::k200OK, std::move(callback));
            } catch (const std::invalid_argument& ia) {
                console->critical("Invalid relay number: {}", relay);
                sendResponse("Invalid relay number", drogon::k400BadRequest, std::move(callback));
            }
        });

        // Run HTTP framework, the method will block in the internal event loop
        drogon::app().run();
}