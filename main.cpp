#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <mpi.h>

#include <chrono>
#include <vector>

#include "utils/filter_functions.h"
#include "utils/display_functions.h"
#include "utils/serial_codes.h"
#include "utils/parallel_dependent_codes.h"

using namespace std;

void serial_code(const string& image_directory_path, int limit){
    auto start = chrono::high_resolution_clock::now();

    images_from_directory_with_filter(image_directory_path, limit, apply_sobel_filter_no_window);

    auto end = chrono::high_resolution_clock::now();
    auto duration = chrono::duration_cast<chrono::duration<double>>(end - start);

    cout << "Execution time: " << duration.count() << " seconds" << endl;
}

void parallel_dependent_code(const string& image_directory_path, int limit){
    auto start = chrono::high_resolution_clock::now();

    images_from_directory_with_filter_dependent_mpi(image_directory_path, limit, apply_sobel_filter_no_window);;

    auto end = chrono::high_resolution_clock::now();
    auto duration = chrono::duration_cast<chrono::duration<double>>(end - start);

    cout << "Execution time Parallel: " << duration.count() << " seconds" << endl;
}


int main() {
    string image_path = "/Users/daver/Desktop/HPC_Project/resources/sheep.jpg";
//    display_image(image_path);
//    apply_sobel_filter(image_path);

    string image_directory_path = "/Users/daver/Desktop/HPC_Project/resources/image_dataset";

//    display_images_from_directory(image_directory_path, 10);

    serial_code(image_directory_path, 10);
    parallel_dependent_code(image_directory_path, 10);

    ////////////////////////////
    // Independent Filters Test
    apply_averaging_filter_no_window(image_path);

    return 0;
}

// g++ -o main main.cpp ../utils/filter_functions.cpp -I../utils