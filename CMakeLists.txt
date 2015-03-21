cmake_minimum_required (VERSION 3.0)

project(petri-dish)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY bin)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/")

find_package(Libev REQUIRED)

include_directories(${LIBEV_INCLUDE_DIRS})

add_executable(petri-dish main.c)

add_executable(echo-client echo-client.c)
target_link_libraries(echo-client ${LIBEV_LIBRARIES})

add_executable(echo-server echo-server.c)
target_link_libraries(echo-server ${LIBEV_LIBRARIES})
