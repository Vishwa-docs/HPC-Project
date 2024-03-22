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
#include "utils/parallel_independent_codes.h"

using namespace std;

void resize_images_in_dataset(const string& image_directory_path, int new_size) {
    vector<string> file_names;
    cv::glob(image_directory_path + "/*.jpg", file_names); // Assuming all images are in JPG format

    for (const string& file_name : file_names) {
        cv::Mat img = cv::imread(file_name);
        if (!img.empty()) {
            cv::resize(img, img, cv::Size(new_size, new_size)); // Resize the image
            imwrite(file_name, img); // Overwrite the original image with the resized image
        }
    }

    // Print the size of the first image for confirmation
    if (!file_names.empty()) {
        cv::Mat first_img = cv::imread(file_names[0]);
        if (!first_img.empty()) {
            cout << "Size of the first image after resizing: " << first_img.size() << endl;
        } else {
            cout << "Failed to read the first image." << endl;
        }
    } else {
        cout << "No images found in the directory." << endl;
    }
}

double serial_code(const string& image_directory_path, int limit, void(*filter_function)(const std::string&)){
    auto start = chrono::high_resolution_clock::now();

    images_from_directory_with_filter(image_directory_path, limit, filter_function);

    auto end = chrono::high_resolution_clock::now();
    auto duration = chrono::duration_cast<chrono::duration<double>>(end - start);

    return duration.count();
}

double parallel_dependent_code(const string& image_directory_path, int limit, void(*filter_function)(const std::string&)){
    auto start = chrono::high_resolution_clock::now();

    images_from_directory_with_filter_dependent_mpi(image_directory_path, limit, filter_function);

    auto end = chrono::high_resolution_clock::now();
    auto duration = chrono::duration_cast<chrono::duration<double>>(end - start);

    return duration.count();
}

double parallel_independent_code(const string& image_directory_path, int limit, void(*filter_function)(const std::string&)){
    auto start = chrono::high_resolution_clock::now();

    images_from_directory_with_filter_independent_mpi(image_directory_path, limit, filter_function);;

    auto end = chrono::high_resolution_clock::now();
    auto duration = chrono::duration_cast<chrono::duration<double>>(end - start);

    return duration.count();
}

void run_single_tests(){
    string image_path = "/Users/daver/Desktop/HPC_Project/resources/sheep.jpg";
    string image_directory_path = "/Users/daver/Desktop/HPC_Project/resources/image_dataset";


    display_image(image_path);
    apply_sobel_filter(image_path);

    display_images_from_directory(image_directory_path, 10);


    // Independent Filters Test
    apply_averaging_filter_no_window(image_path);
}

void run_dependent_filters(int limit){
    string image_directory_path = "/Users/daver/Desktop/HPC_Project/resources/image_dataset";

    double serial_dependent, parallel_dependent;

    serial_dependent = serial_code(image_directory_path, limit, apply_sobel_filter_no_window);
    parallel_dependent = parallel_dependent_code(image_directory_path, limit, apply_sobel_filter_no_window);

    cout << "Execution time for Serial Dependent Filter: " << serial_dependent << " seconds" << endl;
    cout << "Execution time for Parallel Independent Filter: " << parallel_dependent << " seconds" << endl;
}

void run_independent_filters(int limit){
    string image_directory_path = "/Users/daver/Desktop/HPC_Project/resources/image_dataset";

    double serial_independent, parallel_independent;

    serial_independent = serial_code(image_directory_path, limit, apply_averaging_filter_no_window);
    parallel_independent = parallel_independent_code(image_directory_path, limit, reinterpret_cast<void (*)(
            const string &)>(apply_averaging_filter_with_range_no_window));

    cout << "Execution time for Serial Independent Filter: " << serial_independent << " seconds" << endl;
    cout << "Execution time for Parallel Independent Filter: " << parallel_independent << " seconds" << endl;
}

int main() {
    string image_directory_path = "/Users/daver/Desktop/HPC_Project/resources/image_dataset";
    //resize_images_in_dataset(image_directory_path, 128);
    run_independent_filters(50000);

    return 0;
}

// g++ -o main main.cpp ../utils/filter_functions.cpp -I../utils
