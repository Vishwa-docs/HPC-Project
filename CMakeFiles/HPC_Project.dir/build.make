# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.0/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/daver/Desktop/HPC_Project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/daver/Desktop/HPC_Project

# Include any dependencies generated for this target.
include CMakeFiles/HPC_Project.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/HPC_Project.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/HPC_Project.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HPC_Project.dir/flags.make

CMakeFiles/HPC_Project.dir/main.cpp.o: CMakeFiles/HPC_Project.dir/flags.make
CMakeFiles/HPC_Project.dir/main.cpp.o: main.cpp
CMakeFiles/HPC_Project.dir/main.cpp.o: CMakeFiles/HPC_Project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/daver/Desktop/HPC_Project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/HPC_Project.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HPC_Project.dir/main.cpp.o -MF CMakeFiles/HPC_Project.dir/main.cpp.o.d -o CMakeFiles/HPC_Project.dir/main.cpp.o -c /Users/daver/Desktop/HPC_Project/main.cpp

CMakeFiles/HPC_Project.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HPC_Project.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/daver/Desktop/HPC_Project/main.cpp > CMakeFiles/HPC_Project.dir/main.cpp.i

CMakeFiles/HPC_Project.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HPC_Project.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/daver/Desktop/HPC_Project/main.cpp -o CMakeFiles/HPC_Project.dir/main.cpp.s

CMakeFiles/HPC_Project.dir/utils/filter_functions.cpp.o: CMakeFiles/HPC_Project.dir/flags.make
CMakeFiles/HPC_Project.dir/utils/filter_functions.cpp.o: utils/filter_functions.cpp
CMakeFiles/HPC_Project.dir/utils/filter_functions.cpp.o: CMakeFiles/HPC_Project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/daver/Desktop/HPC_Project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/HPC_Project.dir/utils/filter_functions.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HPC_Project.dir/utils/filter_functions.cpp.o -MF CMakeFiles/HPC_Project.dir/utils/filter_functions.cpp.o.d -o CMakeFiles/HPC_Project.dir/utils/filter_functions.cpp.o -c /Users/daver/Desktop/HPC_Project/utils/filter_functions.cpp

CMakeFiles/HPC_Project.dir/utils/filter_functions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HPC_Project.dir/utils/filter_functions.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/daver/Desktop/HPC_Project/utils/filter_functions.cpp > CMakeFiles/HPC_Project.dir/utils/filter_functions.cpp.i

CMakeFiles/HPC_Project.dir/utils/filter_functions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HPC_Project.dir/utils/filter_functions.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/daver/Desktop/HPC_Project/utils/filter_functions.cpp -o CMakeFiles/HPC_Project.dir/utils/filter_functions.cpp.s

CMakeFiles/HPC_Project.dir/utils/display_functions.cpp.o: CMakeFiles/HPC_Project.dir/flags.make
CMakeFiles/HPC_Project.dir/utils/display_functions.cpp.o: utils/display_functions.cpp
CMakeFiles/HPC_Project.dir/utils/display_functions.cpp.o: CMakeFiles/HPC_Project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/daver/Desktop/HPC_Project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/HPC_Project.dir/utils/display_functions.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HPC_Project.dir/utils/display_functions.cpp.o -MF CMakeFiles/HPC_Project.dir/utils/display_functions.cpp.o.d -o CMakeFiles/HPC_Project.dir/utils/display_functions.cpp.o -c /Users/daver/Desktop/HPC_Project/utils/display_functions.cpp

CMakeFiles/HPC_Project.dir/utils/display_functions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HPC_Project.dir/utils/display_functions.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/daver/Desktop/HPC_Project/utils/display_functions.cpp > CMakeFiles/HPC_Project.dir/utils/display_functions.cpp.i

CMakeFiles/HPC_Project.dir/utils/display_functions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HPC_Project.dir/utils/display_functions.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/daver/Desktop/HPC_Project/utils/display_functions.cpp -o CMakeFiles/HPC_Project.dir/utils/display_functions.cpp.s

CMakeFiles/HPC_Project.dir/utils/serial_codes.cpp.o: CMakeFiles/HPC_Project.dir/flags.make
CMakeFiles/HPC_Project.dir/utils/serial_codes.cpp.o: utils/serial_codes.cpp
CMakeFiles/HPC_Project.dir/utils/serial_codes.cpp.o: CMakeFiles/HPC_Project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/daver/Desktop/HPC_Project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/HPC_Project.dir/utils/serial_codes.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HPC_Project.dir/utils/serial_codes.cpp.o -MF CMakeFiles/HPC_Project.dir/utils/serial_codes.cpp.o.d -o CMakeFiles/HPC_Project.dir/utils/serial_codes.cpp.o -c /Users/daver/Desktop/HPC_Project/utils/serial_codes.cpp

CMakeFiles/HPC_Project.dir/utils/serial_codes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HPC_Project.dir/utils/serial_codes.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/daver/Desktop/HPC_Project/utils/serial_codes.cpp > CMakeFiles/HPC_Project.dir/utils/serial_codes.cpp.i

CMakeFiles/HPC_Project.dir/utils/serial_codes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HPC_Project.dir/utils/serial_codes.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/daver/Desktop/HPC_Project/utils/serial_codes.cpp -o CMakeFiles/HPC_Project.dir/utils/serial_codes.cpp.s

CMakeFiles/HPC_Project.dir/utils/parallel_dependent_codes.cpp.o: CMakeFiles/HPC_Project.dir/flags.make
CMakeFiles/HPC_Project.dir/utils/parallel_dependent_codes.cpp.o: utils/parallel_dependent_codes.cpp
CMakeFiles/HPC_Project.dir/utils/parallel_dependent_codes.cpp.o: CMakeFiles/HPC_Project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/daver/Desktop/HPC_Project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/HPC_Project.dir/utils/parallel_dependent_codes.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HPC_Project.dir/utils/parallel_dependent_codes.cpp.o -MF CMakeFiles/HPC_Project.dir/utils/parallel_dependent_codes.cpp.o.d -o CMakeFiles/HPC_Project.dir/utils/parallel_dependent_codes.cpp.o -c /Users/daver/Desktop/HPC_Project/utils/parallel_dependent_codes.cpp

CMakeFiles/HPC_Project.dir/utils/parallel_dependent_codes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HPC_Project.dir/utils/parallel_dependent_codes.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/daver/Desktop/HPC_Project/utils/parallel_dependent_codes.cpp > CMakeFiles/HPC_Project.dir/utils/parallel_dependent_codes.cpp.i

CMakeFiles/HPC_Project.dir/utils/parallel_dependent_codes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HPC_Project.dir/utils/parallel_dependent_codes.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/daver/Desktop/HPC_Project/utils/parallel_dependent_codes.cpp -o CMakeFiles/HPC_Project.dir/utils/parallel_dependent_codes.cpp.s

CMakeFiles/HPC_Project.dir/utils/parallel_independent_codes.cpp.o: CMakeFiles/HPC_Project.dir/flags.make
CMakeFiles/HPC_Project.dir/utils/parallel_independent_codes.cpp.o: utils/parallel_independent_codes.cpp
CMakeFiles/HPC_Project.dir/utils/parallel_independent_codes.cpp.o: CMakeFiles/HPC_Project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/daver/Desktop/HPC_Project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/HPC_Project.dir/utils/parallel_independent_codes.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HPC_Project.dir/utils/parallel_independent_codes.cpp.o -MF CMakeFiles/HPC_Project.dir/utils/parallel_independent_codes.cpp.o.d -o CMakeFiles/HPC_Project.dir/utils/parallel_independent_codes.cpp.o -c /Users/daver/Desktop/HPC_Project/utils/parallel_independent_codes.cpp

CMakeFiles/HPC_Project.dir/utils/parallel_independent_codes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HPC_Project.dir/utils/parallel_independent_codes.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/daver/Desktop/HPC_Project/utils/parallel_independent_codes.cpp > CMakeFiles/HPC_Project.dir/utils/parallel_independent_codes.cpp.i

CMakeFiles/HPC_Project.dir/utils/parallel_independent_codes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HPC_Project.dir/utils/parallel_independent_codes.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/daver/Desktop/HPC_Project/utils/parallel_independent_codes.cpp -o CMakeFiles/HPC_Project.dir/utils/parallel_independent_codes.cpp.s

CMakeFiles/HPC_Project.dir/trial.cpp.o: CMakeFiles/HPC_Project.dir/flags.make
CMakeFiles/HPC_Project.dir/trial.cpp.o: trial.cpp
CMakeFiles/HPC_Project.dir/trial.cpp.o: CMakeFiles/HPC_Project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/daver/Desktop/HPC_Project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/HPC_Project.dir/trial.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HPC_Project.dir/trial.cpp.o -MF CMakeFiles/HPC_Project.dir/trial.cpp.o.d -o CMakeFiles/HPC_Project.dir/trial.cpp.o -c /Users/daver/Desktop/HPC_Project/trial.cpp

CMakeFiles/HPC_Project.dir/trial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HPC_Project.dir/trial.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/daver/Desktop/HPC_Project/trial.cpp > CMakeFiles/HPC_Project.dir/trial.cpp.i

CMakeFiles/HPC_Project.dir/trial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HPC_Project.dir/trial.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/daver/Desktop/HPC_Project/trial.cpp -o CMakeFiles/HPC_Project.dir/trial.cpp.s

# Object files for target HPC_Project
HPC_Project_OBJECTS = \
"CMakeFiles/HPC_Project.dir/main.cpp.o" \
"CMakeFiles/HPC_Project.dir/utils/filter_functions.cpp.o" \
"CMakeFiles/HPC_Project.dir/utils/display_functions.cpp.o" \
"CMakeFiles/HPC_Project.dir/utils/serial_codes.cpp.o" \
"CMakeFiles/HPC_Project.dir/utils/parallel_dependent_codes.cpp.o" \
"CMakeFiles/HPC_Project.dir/utils/parallel_independent_codes.cpp.o" \
"CMakeFiles/HPC_Project.dir/trial.cpp.o"

# External object files for target HPC_Project
HPC_Project_EXTERNAL_OBJECTS =

HPC_Project: CMakeFiles/HPC_Project.dir/main.cpp.o
HPC_Project: CMakeFiles/HPC_Project.dir/utils/filter_functions.cpp.o
HPC_Project: CMakeFiles/HPC_Project.dir/utils/display_functions.cpp.o
HPC_Project: CMakeFiles/HPC_Project.dir/utils/serial_codes.cpp.o
HPC_Project: CMakeFiles/HPC_Project.dir/utils/parallel_dependent_codes.cpp.o
HPC_Project: CMakeFiles/HPC_Project.dir/utils/parallel_independent_codes.cpp.o
HPC_Project: CMakeFiles/HPC_Project.dir/trial.cpp.o
HPC_Project: CMakeFiles/HPC_Project.dir/build.make
HPC_Project: /opt/homebrew/Cellar/open-mpi/5.0.2/lib/libmpi.dylib
HPC_Project: /opt/homebrew/lib/libopencv_gapi.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_stitching.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_alphamat.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_aruco.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_bgsegm.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_bioinspired.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_ccalib.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_dnn_objdetect.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_dnn_superres.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_dpm.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_face.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_freetype.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_fuzzy.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_hfs.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_img_hash.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_intensity_transform.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_line_descriptor.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_mcc.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_quality.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_rapid.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_reg.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_rgbd.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_saliency.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_sfm.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_stereo.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_structured_light.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_superres.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_surface_matching.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_tracking.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_videostab.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_viz.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_wechat_qrcode.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_xfeatures2d.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_xobjdetect.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_xphoto.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_shape.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_highgui.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_datasets.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_plot.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_text.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_ml.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_phase_unwrapping.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_optflow.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_ximgproc.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_video.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_videoio.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_imgcodecs.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_objdetect.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_calib3d.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_dnn.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_features2d.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_flann.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_photo.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_imgproc.4.9.0.dylib
HPC_Project: /opt/homebrew/lib/libopencv_core.4.9.0.dylib
HPC_Project: CMakeFiles/HPC_Project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/daver/Desktop/HPC_Project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable HPC_Project"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HPC_Project.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HPC_Project.dir/build: HPC_Project
.PHONY : CMakeFiles/HPC_Project.dir/build

CMakeFiles/HPC_Project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HPC_Project.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HPC_Project.dir/clean

CMakeFiles/HPC_Project.dir/depend:
	cd /Users/daver/Desktop/HPC_Project && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/daver/Desktop/HPC_Project /Users/daver/Desktop/HPC_Project /Users/daver/Desktop/HPC_Project /Users/daver/Desktop/HPC_Project /Users/daver/Desktop/HPC_Project/CMakeFiles/HPC_Project.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/HPC_Project.dir/depend

