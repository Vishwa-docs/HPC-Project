#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>

int main() {
    cv::Mat image = cv::imread("/Users/daver/Desktop/HPC_Project/sheep.jpg", cv::IMREAD_COLOR);

    if (!image.data) {
        std::cout << "Error loading image!" << std::endl;
        return -1;
    }

    cv::namedWindow("Sheep Image", cv::WINDOW_NORMAL);
    cv::imshow("Sheep Image", image);

    cv::waitKey(0);

    cv::destroyWindow("Sheep Image");
    return 0;
}

