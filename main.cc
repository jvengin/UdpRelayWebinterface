// main.cpp
#include "UdpControl/RelayController.h"
//#include "controllers/HttpRelayController.h"
#include <drogon/drogon.h>
#include <boost/asio.hpp>
#include <chrono>
#include <thread>
#include <unistd.h>

int main() {
    boost::asio::io_context io_context;
    std::string host = "192.168.1.8";  // replace with your host
    std::string port = "12345";  // replace with your port

    char cwd[1024];
    if (getcwd(cwd, sizeof(cwd)) != NULL) {
        std::cout << "Current working directory: " << cwd << std::endl;
    } else {
        std::cerr << "getcwd() error" << std::endl;
    }
    
    RelayController relayController(io_context, host, port);
    relayController.get_status(); // initialize status
    
    //Set HTTP listener address and port
    drogon::app().addListener("0.0.0.0", 5555);
    //Load config file
    drogon::app().loadConfigFile("../config.json");
    
    // Debug print the document root
    std::cout << "Document root: " << drogon::app().getDocumentRoot() << std::endl;
    std::string documentRoot = drogon::app().getDocumentRoot();
    for (const auto & entry : std::filesystem::directory_iterator(documentRoot)) {
        std::cout << entry.path() << std::endl;
    }

    // Register a handler for the path /status
    drogon::app().registerHandler("/status/{1}", // Only works if the path is /status/anything
    [&relayController](const drogon::HttpRequestPtr &req,
                std::function<void (const drogon::HttpResponsePtr &)> &&callback, std::string ignored) {
        std::string status = relayController.get_status();
        std::cout << "Status: " << status << "\n";  // should print "Status: 00000000"

        auto resp = drogon::HttpResponse::newHttpResponse();
        resp->setStatusCode(drogon::k200OK);
        resp->setBody(status);
        callback(resp);
    });

    drogon::app().registerHandler("/relay/{1}/{2}",
        [&relayController](const drogon::HttpRequestPtr &req,
                    std::function<void (const drogon::HttpResponsePtr &)> &&callback,
                    std::string relay,
                    std::string action) {
            int relay_num = std::stoi(relay);
            if (action == "on") {
                relayController.switch_relay_on(relay_num);
            } else if (action == "off") {
                relayController.switch_relay_off(relay_num);
            }
            std::cout << "Switching relay " << relay_num << " " << action << "\n";
            std::string status = relayController.get_status();
            std::cout << "Status: " << status << "\n";  // should print "Status: 00000000"

            auto resp = drogon::HttpResponse::newHttpResponse();
            resp->setStatusCode(drogon::k200OK);
            resp->setBody(status);
            callback(resp);
        });

    
    //Run HTTP framework,the method will block in the internal event loop
    drogon::app().run();

    return 0;
}