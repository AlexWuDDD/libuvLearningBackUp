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