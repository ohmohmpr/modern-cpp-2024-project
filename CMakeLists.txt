cmake_minimum_required(VERSION 3.16)

project(icp_2d)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")

# Locate Open3D Library dependency
find_package(Open3D REQUIRED HINTS ${PROJECT_SOURCE_DIR}/3rdparty/open3d/lib/cmake)
# Locate Eigen3 Library dependency
find_package(Eigen3 REQUIRED)

add_subdirectory(lib/dataloader)
add_subdirectory(lib/viewer)

add_executable(icp_2d ${CMAKE_CURRENT_SOURCE_DIR}/app/main.cpp)
target_link_libraries(icp_2d PRIVATE viewer dataloader)
target_include_directories(icp_2d PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
