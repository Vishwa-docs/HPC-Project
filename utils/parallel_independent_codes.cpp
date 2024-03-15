//
// Created by Vishwa Kumaresh on 15/03/24.
//


#include "display_functions.h"
#include "filter_functions.h"
#include "parallel_dependent_codes.h"
#include "parallel_independent_codes.h"

#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <iostream>
#include <string>
#include <vector>
#include <dirent.h>
#include <sys/types.h>

#include <mpi.h>

using namespace cv;
using namespace std;

#include <mpi.h>
#include <iostream>
#include <dirent.h>
#include <string>
#include <opencv2/opencv.hpp>

void readImageDimensions(const std::string& image_path, int& num_rows, int& num_cols, int& num_channels) {
    cv::Mat image = cv::imread(image_path);
    if (!image.data) {
        std::cerr << "Error: Could not read image at path: " << image_path << std::endl;
        return;
    }

    num_rows = image.rows;
    num_cols = image.cols;
    num_channels = image.channels();
}


void images_from_directory_with_filter_independent_mpi(const std::string& directory, int limit, void(*filter_function)(const std::string&)){
    int comm_size, rank;
    MPI_Init(nullptr, nullptr);
    MPI_Comm_size(MPI_COMM_WORLD, &comm_size);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);

    if (rank == 0) {
        DIR* dir;
        struct dirent* ent;
        int count = 0, image_index = 0;
        std::vector<std::string> image_paths;

        if ((dir = opendir(directory.c_str())) != nullptr) {
            while ((ent = readdir(dir)) != nullptr && count < limit) {
                std::string filename(ent->d_name);
                if (isImageExtension(filename)) {
                    std::string full_path = directory + "/" + filename;
                    image_paths.push_back(full_path);
                    count++;
                }
            }
            closedir(dir);
        } else {
            std::cerr << "Error opening directory: " << directory << std::endl;
            MPI_Abort(MPI_COMM_WORLD, 1);
        }

        MPI_Barrier(MPI_COMM_WORLD);

        // DISTRIBUTE IMAGES AND SPLITTING INFORMATION
        for (int i = 1; i < comm_size; i++) {
            std::string image_path = image_paths[image_index];
            int num_rows, num_cols, num_channels;

            readImageDimensions(image_path, num_rows, num_cols, num_channels);

            int rows_per_thread = num_rows / (comm_size - 1);
            int start_row = image_index * rows_per_thread;
            int end_row = start_row + rows_per_thread;

            MPI_Send(&image_path, sizeof(std::string), MPI_CHAR, i, 0, MPI_COMM_WORLD);
            MPI_Send(&start_row, 1, MPI_INT, i, 1, MPI_COMM_WORLD);
            MPI_Send(&end_row, 1, MPI_INT, i, 2, MPI_COMM_WORLD);

            image_index++;
        }

        for (int i = image_index; i < image_paths.size(); i++) {
            std::string image_path = image_paths[image_index];
            int num_rows, num_cols, num_channels;

            readImageDimensions(image_paths[i], num_rows, num_cols, num_channels);

            int rows_per_thread = num_rows / (comm_size - 1);

            int start_row = image_index * rows_per_thread;
            int end_row = start_row + rows_per_thread;
            apply_averaging_filter_with_range_no_window(image_paths[i], start_row, end_row, num_channels);
        }

    } else {
        std::string image_path;
        int start_row, end_row, num_channels;
        int num_rows, num_cols;

        readImageDimensions(image_path, num_rows, num_cols, num_channels);

        MPI_Recv(&image_path, sizeof(std::string), MPI_CHAR, 0, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
        MPI_Recv(&start_row, 1, MPI_INT, 0, 1, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
        MPI_Recv(&end_row, 1, MPI_INT, 0, 2, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

        apply_averaging_filter_with_range_no_window(image_path, start_row, end_row, num_channels);
    }

    MPI_Finalize();
}