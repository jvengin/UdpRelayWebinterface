#pragma once
#include <boost/asio.hpp>
#include <iostream>
#include <string>
#include <chrono>
#include <spdlog/spdlog.h>
#include "spdlog/sinks/stdout_color_sinks.h"


class RelayController {
public:
    RelayController(boost::asio::io_context& io_context, const std::string& host, const std::string& port, std::shared_ptr<spdlog::logger> console);

    void switch_relay_on(int relay);
    void switch_relay_off(int relay);
    void update_status();
    std::string get_status() const;
    std::chrono::system_clock::time_point get_timestamp() const;

private:
    boost::asio::ip::udp::socket socket_;
    boost::asio::ip::udp::endpoint endpoint_;
    std::string status_;
    std::chrono::system_clock::time_point timestamp_;
    std::shared_ptr<spdlog::logger> console_;
};