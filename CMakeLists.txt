cmake_minimum_required(VERSION 3.27)
project(HPC_Project)

set(CMAKE_CXX_STANDARD 20)

find_package(MPI REQUIRED)
find_package(OpenCV REQUIRED)

include_directories("/opt/homebrew/Cellar/opencv/4.9.0_5/include/opencv4")
link_directories("/opt/homebrew/Cellar/opencv/4.9.0_5/include/opencv4")

add_executable(HPC_Project main.cpp
        utils/filter_functions.h
        utils/filter_functions.cpp
        utils/display_functions.h
        utils/display_functions.cpp
        utils/serial_codes.h
        utils/serial_codes.cpp
        utils/parallel_dependent_codes.h
        utils/parallel_dependent_codes.cpp
        utils/parallel_independent_codes.h
        utils/parallel_independent_codes.cpp
	)


target_link_libraries(HPC_Project PRIVATE MPI::MPI_CXX ${MPI_LIBRARIES} ${OpenCV_LIBS})
#OpenCV::core OpenCV::imgproc OpenCV::highgui