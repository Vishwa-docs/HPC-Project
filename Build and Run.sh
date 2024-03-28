#!/bin/zsh

# Install these
# brew install ffmpeg lame opencv open-mpi

# Install MPI
# mpic++ --version

# Getting the number of processors (System configuration values with number of hyperthreading as well)
sysctl hw.logicalcpu | awk '{print $NF}'
# Number of physical Cores
sysctl hw.physicalcpu | awk '{print $NF}'

# Getting path to mpirun
# whereis mpirun

# Setting up in CLion
# Go to Configurations, create a new one and paste the path of mpirun in "Executable"
# In Program Arguments : -np 4 -wd /Users/daver/Desktop/HPC_Project ./Users/daver/Desktop/HPC_Project/HPC_Project

# Run on Terminal : (Source https://www.youtube.com/watch?v=Ozc3zWJ_NhQ)
make clean
cmake -B build -DCMAKE_BUILD_TYPE=Debug && make
#./HPC_Project

# Execution Permissions
#chmod a+x /Users/daver/Desktop/HPC_Project/HPC_Project

mpirun -np 4 ./Users/daver/Desktop/HPC_Project/HPC_Project