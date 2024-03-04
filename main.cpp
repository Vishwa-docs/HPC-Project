#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>

void display_image(const std::string& filename) {
    cv::Mat image = cv::imread(filename, cv::IMREAD_COLOR);

    if (!image.data) {
        std::cout << "Error loading image!" << std::endl;
        return;
    }

    cv::namedWindow("Image", cv::WINDOW_NORMAL);
    cv::imshow("Image", image);

    cv::waitKey(0);

    cv::destroyWindow("Image");
}

void apply_sobel_filter(const std::string& filename) {
    cv::Mat image = cv::imread(filename, cv::IMREAD_GRAYSCALE);

    if (!image.data) {
        std::cout << "Error loading image!" << std::endl;
        return;
    }

    cv::Mat sobel_x, sobel_y;
    cv::Sobel(image, sobel_x, CV_16S, 1, 0);
    cv::Sobel(image, sobel_y, CV_16S, 0, 1);

    cv::convertScaleAbs(sobel_x, sobel_x, 1, 0); // Convert back to CV_8U for display
    cv::convertScaleAbs(sobel_y, sobel_y, 1, 0);

    cv::Mat sobel_combined;
    cv::vconcat(image, sobel_x, sobel_combined);
    cv::vconcat(sobel_combined, sobel_y, sobel_combined);

    cv::namedWindow("Sobel Filter", cv::WINDOW_NORMAL);
    cv::imshow("Sobel Filter", sobel_combined);

    cv::waitKey(0);

    cv::destroyWindow("Sobel Filter");
}

int main() {
    std::string image_path = "/Users/daver/Desktop/HPC_Project/sheep.jpg";
    display_image(image_path);
    apply_sobel_filter(image_path);

    return 0;
}
