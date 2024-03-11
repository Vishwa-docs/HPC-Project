#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <mpi.h>

#include <chrono>
#include <vector>

#include "utils/filter_functions.h"
#include "utils/display_functions.h"


int main() {
//    std::string image_path = "/Users/daver/Desktop/HPC_Project/resources/sheep.jpg";
//    display_image(image_path);
//    apply_sobel_filter(image_path);

    std::string image_directory_path = "/Users/daver/Desktop/HPC_Project/resources/image_dataset";

    // display_images_from_directory(image_directory_path, 10);

    auto start = std::chrono::high_resolution_clock::now();

    display_images_from_directory_with_filter(image_directory_path, 10, apply_sobel_filter);

    auto end = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::duration<double>>(end - start);

    std::cout << "Execution time: " << duration.count() << " seconds" << std::endl;

    return 0;
}

// g++ -o main main.cpp ../utils/filter_functions.cpp -I../utils