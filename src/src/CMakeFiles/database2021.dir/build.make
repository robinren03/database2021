# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /mnt/i/database2021

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/i/database2021/src

# Include any dependencies generated for this target.
include src/CMakeFiles/database2021.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/database2021.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/database2021.dir/flags.make

src/CMakeFiles/database2021.dir/record_handler_test.o: src/CMakeFiles/database2021.dir/flags.make
src/CMakeFiles/database2021.dir/record_handler_test.o: record_handler_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/i/database2021/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/database2021.dir/record_handler_test.o"
	cd /mnt/i/database2021/src/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/database2021.dir/record_handler_test.o -c /mnt/i/database2021/src/record_handler_test.cpp

src/CMakeFiles/database2021.dir/record_handler_test.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/database2021.dir/record_handler_test.i"
	cd /mnt/i/database2021/src/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/i/database2021/src/record_handler_test.cpp > CMakeFiles/database2021.dir/record_handler_test.i

src/CMakeFiles/database2021.dir/record_handler_test.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/database2021.dir/record_handler_test.s"
	cd /mnt/i/database2021/src/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/i/database2021/src/record_handler_test.cpp -o CMakeFiles/database2021.dir/record_handler_test.s

# Object files for target database2021
database2021_OBJECTS = \
"CMakeFiles/database2021.dir/record_handler_test.o"

# External object files for target database2021
database2021_EXTERNAL_OBJECTS =

src/database2021: src/CMakeFiles/database2021.dir/record_handler_test.o
src/database2021: src/CMakeFiles/database2021.dir/build.make
src/database2021: src/libdatabase2021_lib.a
src/database2021: src/CMakeFiles/database2021.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/i/database2021/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable database2021"
	cd /mnt/i/database2021/src/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/database2021.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/database2021.dir/build: src/database2021

.PHONY : src/CMakeFiles/database2021.dir/build

src/CMakeFiles/database2021.dir/clean:
	cd /mnt/i/database2021/src/src && $(CMAKE_COMMAND) -P CMakeFiles/database2021.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/database2021.dir/clean

src/CMakeFiles/database2021.dir/depend:
	cd /mnt/i/database2021/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/i/database2021 /mnt/i/database2021/src /mnt/i/database2021/src /mnt/i/database2021/src/src /mnt/i/database2021/src/src/CMakeFiles/database2021.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/database2021.dir/depend

