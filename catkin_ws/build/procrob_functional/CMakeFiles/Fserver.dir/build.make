# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/serena/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/serena/catkin_ws/build

# Include any dependencies generated for this target.
include procrob_functional/CMakeFiles/Fserver.dir/depend.make

# Include the progress variables for this target.
include procrob_functional/CMakeFiles/Fserver.dir/progress.make

# Include the compile flags for this target's objects.
include procrob_functional/CMakeFiles/Fserver.dir/flags.make

procrob_functional/CMakeFiles/Fserver.dir/src/face_recognition.cpp.o: procrob_functional/CMakeFiles/Fserver.dir/flags.make
procrob_functional/CMakeFiles/Fserver.dir/src/face_recognition.cpp.o: /home/serena/catkin_ws/src/procrob_functional/src/face_recognition.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/serena/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object procrob_functional/CMakeFiles/Fserver.dir/src/face_recognition.cpp.o"
	cd /home/serena/catkin_ws/build/procrob_functional && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Fserver.dir/src/face_recognition.cpp.o -c /home/serena/catkin_ws/src/procrob_functional/src/face_recognition.cpp

procrob_functional/CMakeFiles/Fserver.dir/src/face_recognition.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Fserver.dir/src/face_recognition.cpp.i"
	cd /home/serena/catkin_ws/build/procrob_functional && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/serena/catkin_ws/src/procrob_functional/src/face_recognition.cpp > CMakeFiles/Fserver.dir/src/face_recognition.cpp.i

procrob_functional/CMakeFiles/Fserver.dir/src/face_recognition.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Fserver.dir/src/face_recognition.cpp.s"
	cd /home/serena/catkin_ws/build/procrob_functional && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/serena/catkin_ws/src/procrob_functional/src/face_recognition.cpp -o CMakeFiles/Fserver.dir/src/face_recognition.cpp.s

procrob_functional/CMakeFiles/Fserver.dir/src/face_recognition.cpp.o.requires:

.PHONY : procrob_functional/CMakeFiles/Fserver.dir/src/face_recognition.cpp.o.requires

procrob_functional/CMakeFiles/Fserver.dir/src/face_recognition.cpp.o.provides: procrob_functional/CMakeFiles/Fserver.dir/src/face_recognition.cpp.o.requires
	$(MAKE) -f procrob_functional/CMakeFiles/Fserver.dir/build.make procrob_functional/CMakeFiles/Fserver.dir/src/face_recognition.cpp.o.provides.build
.PHONY : procrob_functional/CMakeFiles/Fserver.dir/src/face_recognition.cpp.o.provides

procrob_functional/CMakeFiles/Fserver.dir/src/face_recognition.cpp.o.provides.build: procrob_functional/CMakeFiles/Fserver.dir/src/face_recognition.cpp.o


# Object files for target Fserver
Fserver_OBJECTS = \
"CMakeFiles/Fserver.dir/src/face_recognition.cpp.o"

# External object files for target Fserver
Fserver_EXTERNAL_OBJECTS =

/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: procrob_functional/CMakeFiles/Fserver.dir/src/face_recognition.cpp.o
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: procrob_functional/CMakeFiles/Fserver.dir/build.make
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libactionlib.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libcv_bridge.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_calib3d3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_core3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_features2d3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_flann3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_highgui3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_imgcodecs3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_imgproc3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_ml3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_objdetect3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_photo3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_shape3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_stitching3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_superres3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_video3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_videoio3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_videostab3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_viz3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_aruco3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_bgsegm3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_bioinspired3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_ccalib3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_cvv3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_datasets3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_dpm3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_face3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_fuzzy3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_hdf3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_line_descriptor3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_optflow3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_phase_unwrapping3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_plot3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_reg3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_rgbd3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_saliency3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_stereo3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_structured_light3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_surface_matching3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_text3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_xfeatures2d3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_ximgproc3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_xobjdetect3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libopencv_xphoto3.so.3.2.0
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libimage_transport.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libmessage_filters.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libclass_loader.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /usr/lib/libPocoFoundation.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /usr/lib/x86_64-linux-gnu/libdl.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libroscpp.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/librosconsole.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libroslib.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/librospack.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/librostime.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /opt/ros/kinetic/lib/libcpp_common.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/serena/catkin_ws/devel/lib/face_recognition/Fserver: procrob_functional/CMakeFiles/Fserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/serena/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/serena/catkin_ws/devel/lib/face_recognition/Fserver"
	cd /home/serena/catkin_ws/build/procrob_functional && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Fserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
procrob_functional/CMakeFiles/Fserver.dir/build: /home/serena/catkin_ws/devel/lib/face_recognition/Fserver

.PHONY : procrob_functional/CMakeFiles/Fserver.dir/build

procrob_functional/CMakeFiles/Fserver.dir/requires: procrob_functional/CMakeFiles/Fserver.dir/src/face_recognition.cpp.o.requires

.PHONY : procrob_functional/CMakeFiles/Fserver.dir/requires

procrob_functional/CMakeFiles/Fserver.dir/clean:
	cd /home/serena/catkin_ws/build/procrob_functional && $(CMAKE_COMMAND) -P CMakeFiles/Fserver.dir/cmake_clean.cmake
.PHONY : procrob_functional/CMakeFiles/Fserver.dir/clean

procrob_functional/CMakeFiles/Fserver.dir/depend:
	cd /home/serena/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/serena/catkin_ws/src /home/serena/catkin_ws/src/procrob_functional /home/serena/catkin_ws/build /home/serena/catkin_ws/build/procrob_functional /home/serena/catkin_ws/build/procrob_functional/CMakeFiles/Fserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : procrob_functional/CMakeFiles/Fserver.dir/depend

