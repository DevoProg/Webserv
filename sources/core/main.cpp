#include <iostream>
#include "../../includes/webserv.hpp"

#define CONFIG_FILE_PATH    "./config/config.cfg"

int main(int argc, char const *argv[], char const *envp[])
{
    if (argc > 2){
        throw std::invalid_argument("Usage: ./webserv [config_path].");
    }
    return 0;
}

