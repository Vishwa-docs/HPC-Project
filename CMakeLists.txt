cmake_minimum_required(VERSION 3.27)
project(HPC_Project)

set(CMAKE_CXX_STANDARD 20)

find_package(MPI REQUIRED)
find_package(OpenCV REQUIRED)

#include_directories("/opt/homebrew/opt/opencv")
#link_directories("/opt/homebrew/opt/opencv")

add_executable(HPC_Project main.cpp
        utils/filter_functions.h
        utils/filter_functions.cpp
        utils/display_functions.h
        utils/display_functions.cpp)

target_link_libraries(HPC_Project PRIVATE MPI::MPI_CXX ${OpenCV_LIBS})
#OpenCV::core OpenCV::imgproc OpenCV::highgui