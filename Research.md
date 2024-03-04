# Choosing the Right Algorithm

## Filter Characteristics
1. Independent Filters : 
   1. Process each pixel independently
   2. Eg : Averaging, Noise reduction
   3. Uses **Data Parallelism**
   4. Uses **SIMD Architecture**
      1. Single instruction stream: All processing units (cores, GPUs) execute the same set of instructions. 
      2. Multiple data streams: Each processing unit operates on different data elements (pixels) from the image.
2. Dependent Filters :
   1. Rely on information from neighbouring filters
   2. Eg : Edge Detection, Sharpening
   3. Uses **Task Parallelism**
   4. Uses **MIMD Architecture**
      1. Multiple instruction streams: Different processing units can execute different instruction sequences depending on the specific pixel and its neighbors. 
      2. Multiple data streams: Each processing unit still operates on its own data (pixels).

## Other Requirements
1. Communication Overhead : Should be minimal for dependent filters
2. Load Balancing : Ensure even distribution
3. Adapt to various size and complexities

---
# Libraries Used
+ Data Parallel Filters
  + OpenMP : Shared Memory Filters
  + CUDA : For GPUs with high parallelism and memory bandwidth, ideal for large images and independent filters.
+ Task Parallel Filters
  + MPI : Standard for distributed memory
  + HPX : For dynamic load balancing
+ Others
  + OpenCV
  + OpenCL (Why Tho?)