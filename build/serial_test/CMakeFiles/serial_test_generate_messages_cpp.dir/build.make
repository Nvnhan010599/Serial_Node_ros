# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nhan/my_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nhan/my_ws/build

# Utility rule file for serial_test_generate_messages_cpp.

# Include the progress variables for this target.
include serial_test/CMakeFiles/serial_test_generate_messages_cpp.dir/progress.make

serial_test/CMakeFiles/serial_test_generate_messages_cpp: /home/nhan/my_ws/devel/include/serial_test/velocity.h


/home/nhan/my_ws/devel/include/serial_test/velocity.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/nhan/my_ws/devel/include/serial_test/velocity.h: /home/nhan/my_ws/src/serial_test/msg/velocity.msg
/home/nhan/my_ws/devel/include/serial_test/velocity.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/nhan/my_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from serial_test/velocity.msg"
	cd /home/nhan/my_ws/src/serial_test && /home/nhan/my_ws/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/nhan/my_ws/src/serial_test/msg/velocity.msg -Iserial_test:/home/nhan/my_ws/src/serial_test/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p serial_test -o /home/nhan/my_ws/devel/include/serial_test -e /opt/ros/kinetic/share/gencpp/cmake/..

serial_test_generate_messages_cpp: serial_test/CMakeFiles/serial_test_generate_messages_cpp
serial_test_generate_messages_cpp: /home/nhan/my_ws/devel/include/serial_test/velocity.h
serial_test_generate_messages_cpp: serial_test/CMakeFiles/serial_test_generate_messages_cpp.dir/build.make

.PHONY : serial_test_generate_messages_cpp

# Rule to build all files generated by this target.
serial_test/CMakeFiles/serial_test_generate_messages_cpp.dir/build: serial_test_generate_messages_cpp

.PHONY : serial_test/CMakeFiles/serial_test_generate_messages_cpp.dir/build

serial_test/CMakeFiles/serial_test_generate_messages_cpp.dir/clean:
	cd /home/nhan/my_ws/build/serial_test && $(CMAKE_COMMAND) -P CMakeFiles/serial_test_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : serial_test/CMakeFiles/serial_test_generate_messages_cpp.dir/clean

serial_test/CMakeFiles/serial_test_generate_messages_cpp.dir/depend:
	cd /home/nhan/my_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nhan/my_ws/src /home/nhan/my_ws/src/serial_test /home/nhan/my_ws/build /home/nhan/my_ws/build/serial_test /home/nhan/my_ws/build/serial_test/CMakeFiles/serial_test_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : serial_test/CMakeFiles/serial_test_generate_messages_cpp.dir/depend

