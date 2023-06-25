cmake_minimum_required(VERSION 3.18.1)

project("ZombieCafeExtension")

add_library(ZombieCafeExtension SHARED
            ZombieCafeExtension.cpp)


target_link_libraries(ZombieCafeExtension
                      android
                      log)