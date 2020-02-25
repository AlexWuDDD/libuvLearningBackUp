cmake_minimum_required(VERSION 3.15)
project(libuvLearningNote)


set(INC_DIR /usr/local/include)
set(LINK_DIR /usr/local/lib)

include_directories(${INC_DIR})
link_directories(${LINK_DIR})



set(CMAKE_CXX_STANDARD 11)

add_executable(libuvLearningNote main.cpp test.cpp test.h)
target_link_libraries(libuvLearningNote uv)

add_executable(uvcat uvcat/main.cpp)
target_link_libraries(uvcat uv)

add_executable(uvtee uvtee/main.cpp)
target_link_libraries(uvtee uv)

add_executable(onChange onChange/main.cpp)
target_link_libraries(onChange uv)

add_executable(tcpEchoServer tcp-echo-server/main.cpp)
target_link_libraries(tcpEchoServer uv)

add_executable(tcpClient tcpClient/tcpClient.cpp)
target_link_libraries(tcpClient uv)

add_executable(udp-dhcp udp-dhcp/main.cpp)
target_link_libraries(udp-dhcp uv)

add_executable(dns dns/main.cpp)
target_link_libraries(dns uv)

add_executable(interface interface/main.cpp)
target_link_libraries(interface uv)