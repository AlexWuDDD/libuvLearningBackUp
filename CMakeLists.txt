cmake_minimum_required(VERSION 3.15)
project(libuvLearningNote)


set(INC_DIR /usr/local/include /usr/local/curl/include)
set(LINK_DIR /usr/local/lib /usr/local/curl/lib)

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

add_executable(thread_creat thread-creat/main.cpp)
target_link_libraries(thread_creat uv)

add_executable(locks locks/main.cpp)
target_link_libraries(locks uv)

add_executable(uv_once uv_once/main.cpp)
target_link_libraries(uv_once uv)

add_executable(queue_work queue_work/main.cpp)
target_link_libraries(queue_work uv)

add_executable(queue_cancel queue_cancel/main.cpp)
target_link_libraries(queue_cancel uv)

add_executable(progress progress/main.cpp)
target_link_libraries(progress uv)

add_executable(spawn spawn/main.cpp)
target_link_libraries(spawn uv)

add_executable(detach detach/main.cpp)
target_link_libraries(detach uv)

add_executable(signal signal/main.cpp)
target_link_libraries(signal uv)

add_executable(proc_streams proc_streams/main.cpp)
add_executable(test proc_streams/test.cpp)
target_link_libraries(proc_streams uv)

add_executable(cgi cgi/main.cpp)
add_executable(tick cgi/tick.cpp)
target_link_libraries(cgi uv)

add_executable(pipe_echo_server pipe_echo_server/main.cpp)
target_link_libraries(pipe_echo_server uv)

add_executable(multi_echo_server multi_echo_server/main.cpp)
add_executable(worker multi_echo_server/woker.cpp)
target_link_libraries(multi_echo_server uv)
target_link_libraries(worker uv)

add_executable(uvstop uvstop/main.cpp)
target_link_libraries(uvstop uv)

add_executable(ref_timer ref_timer/main.cpp)
target_link_libraries(ref_timer uv)

add_executable(idle_computer idle_computer/main.cpp)
target_link_libraries(idle_computer uv)

add_executable(Passingdatatoworkerthread Passingdatatoworkerthread/main.cpp)
target_link_libraries(Passingdatatoworkerthread uv)

add_executable(uvwget uvwget/main.cpp)
target_link_libraries(uvwget uv curl)

add_executable(tty tty/main.cpp)
target_link_libraries(tty uv)

add_executable(tty_gravity tty_gravity/main.cpp)
target_link_libraries(tty_gravity uv)





