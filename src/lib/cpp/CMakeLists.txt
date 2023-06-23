cmake_minimum_required(VERSION 3.18.1)

project("ZombieCafe")

add_library(ZombieCafe SHARED
            ZombieCafe.cpp)


target_link_libraries(ZombieCafe
                      android
                      log)