#pragma once
#include <boost/asio.hpp>
#include <iostream>
#include <string>
#include <chrono>
#include <spdlog/spdlog.h>
#include "spdlog/sinks/stdout_color_sinks.h"


class RelayController {
public:
    RelayController(boost::asio::io_context& io_context, const std::string& host, const std::string& port, std::shared_ptr<spdlog::logger> console)
        : socket_(io_context, boost::asio::ip::udp::endpoint(boost::asio::ip::udp::v4(), 0)),
          console_(console) {
            
        auto endpoints = boost::asio::ip::udp::resolver(io_context).resolve(boost::asio::ip::udp::v4(), host, port);
        if (endpoints.begin() != endpoints.end()) {
            endpoint_ = *endpoints.begin();
        } else {
            // handle error: no endpoints found
        }
    }

    void switch_relay_on(int relay) {
        std::string message = "FF0" + std::to_string(relay) + "01";
        socket_.send_to(boost::asio::buffer(message), endpoint_);
        update_status();
    }

    void switch_relay_off(int relay) {
        std::string message = "FF0" + std::to_string(relay) + "00";
        socket_.send_to(boost::asio::buffer(message), endpoint_);
        update_status();
    }

    void update_status() {
        char reply[128];
        boost::asio::ip::udp::endpoint sender_endpoint;

        std::string message = "FF0000";
        socket_.send_to(boost::asio::buffer(message), endpoint_); // Request status
        try {
            size_t len = socket_.receive_from(boost::asio::buffer(reply), sender_endpoint);
            status_ = std::string(reply, len);
        } catch (const boost::system::system_error& e) {
            if (e.code() == boost::asio::error::operation_aborted) {
                console_->debug("Timeout occurred during status update in receive_from");
            } else {
                throw;
            }
        }
    }

    std::string get_status() const {
        return status_;
    }

    std::chrono::system_clock::time_point get_timestamp() const {
        return timestamp_;
    }

private:
    boost::asio::ip::udp::socket socket_;
    boost::asio::ip::udp::endpoint endpoint_;
    std::string status_;
    std::chrono::system_clock::time_point timestamp_;
    std::shared_ptr<spdlog::logger> console_;
};