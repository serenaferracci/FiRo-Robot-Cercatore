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
include thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/depend.make

# Include the progress variables for this target.
include thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/progress.make

# Include the compile flags for this target's objects.
include thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/flags.make

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.o: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/flags.make
thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.o: /home/serena/catkin_ws/src/thin_drivers/thin_matilda/src/thin_matilda_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/serena/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.o"
	cd /home/serena/catkin_ws/build/thin_drivers/thin_matilda && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.o -c /home/serena/catkin_ws/src/thin_drivers/thin_matilda/src/thin_matilda_node.cpp

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.i"
	cd /home/serena/catkin_ws/build/thin_drivers/thin_matilda && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/serena/catkin_ws/src/thin_drivers/thin_matilda/src/thin_matilda_node.cpp > CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.i

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.s"
	cd /home/serena/catkin_ws/build/thin_drivers/thin_matilda && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/serena/catkin_ws/src/thin_drivers/thin_matilda/src/thin_matilda_node.cpp -o CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.s

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.o.requires:

.PHONY : thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.o.requires

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.o.provides: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.o.requires
	$(MAKE) -f thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/build.make thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.o.provides.build
.PHONY : thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.o.provides

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.o.provides.build: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.o


thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.o: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/flags.make
thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.o: /home/serena/catkin_ws/src/thin_drivers/thin_matilda/src/MatildaRobot.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/serena/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.o"
	cd /home/serena/catkin_ws/build/thin_drivers/thin_matilda && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.o -c /home/serena/catkin_ws/src/thin_drivers/thin_matilda/src/MatildaRobot.cpp

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.i"
	cd /home/serena/catkin_ws/build/thin_drivers/thin_matilda && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/serena/catkin_ws/src/thin_drivers/thin_matilda/src/MatildaRobot.cpp > CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.i

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.s"
	cd /home/serena/catkin_ws/build/thin_drivers/thin_matilda && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/serena/catkin_ws/src/thin_drivers/thin_matilda/src/MatildaRobot.cpp -o CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.s

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.o.requires:

.PHONY : thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.o.requires

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.o.provides: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.o.requires
	$(MAKE) -f thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/build.make thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.o.provides.build
.PHONY : thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.o.provides

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.o.provides.build: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.o


thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/serial.c.o: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/flags.make
thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/serial.c.o: /home/serena/catkin_ws/src/thin_drivers/thin_matilda/src/serial.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/serena/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/serial.c.o"
	cd /home/serena/catkin_ws/build/thin_drivers/thin_matilda && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/thin_matilda_node.dir/src/serial.c.o   -c /home/serena/catkin_ws/src/thin_drivers/thin_matilda/src/serial.c

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/serial.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/thin_matilda_node.dir/src/serial.c.i"
	cd /home/serena/catkin_ws/build/thin_drivers/thin_matilda && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/serena/catkin_ws/src/thin_drivers/thin_matilda/src/serial.c > CMakeFiles/thin_matilda_node.dir/src/serial.c.i

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/serial.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/thin_matilda_node.dir/src/serial.c.s"
	cd /home/serena/catkin_ws/build/thin_drivers/thin_matilda && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/serena/catkin_ws/src/thin_drivers/thin_matilda/src/serial.c -o CMakeFiles/thin_matilda_node.dir/src/serial.c.s

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/serial.c.o.requires:

.PHONY : thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/serial.c.o.requires

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/serial.c.o.provides: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/serial.c.o.requires
	$(MAKE) -f thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/build.make thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/serial.c.o.provides.build
.PHONY : thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/serial.c.o.provides

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/serial.c.o.provides.build: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/serial.c.o


# Object files for target thin_matilda_node
thin_matilda_node_OBJECTS = \
"CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.o" \
"CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.o" \
"CMakeFiles/thin_matilda_node.dir/src/serial.c.o"

# External object files for target thin_matilda_node
thin_matilda_node_EXTERNAL_OBJECTS =

/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.o
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.o
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/serial.c.o
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/build.make
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /opt/ros/kinetic/lib/libroscpp.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /opt/ros/kinetic/lib/librosconsole.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /opt/ros/kinetic/lib/librostime.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /opt/ros/kinetic/lib/libcpp_common.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/serena/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable /home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node"
	cd /home/serena/catkin_ws/build/thin_drivers/thin_matilda && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/thin_matilda_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/build: /home/serena/catkin_ws/devel/lib/thin_matilda/thin_matilda_node

.PHONY : thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/build

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/requires: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/thin_matilda_node.cpp.o.requires
thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/requires: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/MatildaRobot.cpp.o.requires
thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/requires: thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/src/serial.c.o.requires

.PHONY : thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/requires

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/clean:
	cd /home/serena/catkin_ws/build/thin_drivers/thin_matilda && $(CMAKE_COMMAND) -P CMakeFiles/thin_matilda_node.dir/cmake_clean.cmake
.PHONY : thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/clean

thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/depend:
	cd /home/serena/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/serena/catkin_ws/src /home/serena/catkin_ws/src/thin_drivers/thin_matilda /home/serena/catkin_ws/build /home/serena/catkin_ws/build/thin_drivers/thin_matilda /home/serena/catkin_ws/build/thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : thin_drivers/thin_matilda/CMakeFiles/thin_matilda_node.dir/depend

