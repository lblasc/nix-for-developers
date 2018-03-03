cmake_minimum_required(VERSION 2.8)
project(CPP-NETLIB)

set(Boost_USE_MULTI_THREADED ON)

find_package(Boost 1.55.0 REQUIRED COMPONENTS system thread)

add_executable(hello_world_server server.cpp)

target_link_libraries(hello_world_server
    ${Boost_LIBRARIES}
    ${CMAKE_THREAD_LIBS_INIT}
    cppnetlib-server-parsers)
