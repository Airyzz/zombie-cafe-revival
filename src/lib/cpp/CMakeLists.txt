cmake_minimum_required(VERSION 3.18.1)

project("ZombieCafeExtension")

set(SOURCE_FILES ZombieCafeExtension.cpp Memory.cpp)

add_library(${PROJECT_NAME} SHARED
            ${SOURCE_FILES})

target_include_directories(ZombieCafeExtension PRIVATE)

target_link_libraries(ZombieCafeExtension android log)