//
// Created by Vishwa Kumaresh on 12/03/24.
//

#include "display_functions.h"
#include "filter_functions.h"
#include "parallel_dependent_codes.h"

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

void images_from_directory_with_filter_mpi(const std::string& directory, int limit, void(*filter_function)(const std::string&)) {
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

        for (int i = 1; i < comm_size; i++) {
            // FILE DISTRIBUTION ACROSS THREADS
            int num_images = image_paths.size() / (comm_size - 1);
            MPI_Send(&num_images, 1, MPI_INT, i, 0, MPI_COMM_WORLD);
            MPI_Send(&image_paths[image_index], num_images * sizeof(std::string), MPI_CHAR, i, 1, MPI_COMM_WORLD);
            image_index += num_images;
        }

        for (int i = image_index; i < image_paths.size(); i++) {
            filter_function(image_paths[i]);
        }
    } else {
        int num_images;
        MPI_Recv(&num_images, 1, MPI_INT, 0, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
        std::vector<std::string> image_paths(num_images);
        MPI_Recv(&image_paths[0], num_images * sizeof(std::string), MPI_CHAR, 0, 1, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

        for (const std::string& path : image_paths) {
            filter_function(path);
        }
    }

    MPI_Finalize();
}
