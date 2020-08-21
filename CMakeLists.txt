cmake_minimum_required(VERSION 3.5)
project(dev_M5Stack)

include($ENV{IDF_PATH}/tools/cmake/project.cmake)
#set(CMAKE_CXX_STANDARD 11)

set(SOURCES main.cpp
        main.cpp
        )

idf_component_register(SRCS ${SOURCES}
        INCLUDE_DIRS
            ${CMAKE_CURRENT_LIST_DIR}
            $ENV{IDF_PATH}/components
            components
        REQUIRES
            smooth_component
        )
        
