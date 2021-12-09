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
CMAKE_SOURCE_DIR = /mnt/d/database2021/src/parser

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/database2021/src/parser

# Include any dependencies generated for this target.
include CMakeFiles/SQLHelp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SQLHelp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SQLHelp.dir/flags.make

CMakeFiles/SQLHelp.dir/generated/SQLBaseVisitor.o: CMakeFiles/SQLHelp.dir/flags.make
CMakeFiles/SQLHelp.dir/generated/SQLBaseVisitor.o: generated/SQLBaseVisitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/database2021/src/parser/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SQLHelp.dir/generated/SQLBaseVisitor.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SQLHelp.dir/generated/SQLBaseVisitor.o -c /mnt/d/database2021/src/parser/generated/SQLBaseVisitor.cpp

CMakeFiles/SQLHelp.dir/generated/SQLBaseVisitor.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SQLHelp.dir/generated/SQLBaseVisitor.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/database2021/src/parser/generated/SQLBaseVisitor.cpp > CMakeFiles/SQLHelp.dir/generated/SQLBaseVisitor.i

CMakeFiles/SQLHelp.dir/generated/SQLBaseVisitor.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SQLHelp.dir/generated/SQLBaseVisitor.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/database2021/src/parser/generated/SQLBaseVisitor.cpp -o CMakeFiles/SQLHelp.dir/generated/SQLBaseVisitor.s

CMakeFiles/SQLHelp.dir/generated/SQLLexer.o: CMakeFiles/SQLHelp.dir/flags.make
CMakeFiles/SQLHelp.dir/generated/SQLLexer.o: generated/SQLLexer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/database2021/src/parser/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SQLHelp.dir/generated/SQLLexer.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SQLHelp.dir/generated/SQLLexer.o -c /mnt/d/database2021/src/parser/generated/SQLLexer.cpp

CMakeFiles/SQLHelp.dir/generated/SQLLexer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SQLHelp.dir/generated/SQLLexer.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/database2021/src/parser/generated/SQLLexer.cpp > CMakeFiles/SQLHelp.dir/generated/SQLLexer.i

CMakeFiles/SQLHelp.dir/generated/SQLLexer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SQLHelp.dir/generated/SQLLexer.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/database2021/src/parser/generated/SQLLexer.cpp -o CMakeFiles/SQLHelp.dir/generated/SQLLexer.s

CMakeFiles/SQLHelp.dir/generated/SQLParser.o: CMakeFiles/SQLHelp.dir/flags.make
CMakeFiles/SQLHelp.dir/generated/SQLParser.o: generated/SQLParser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/database2021/src/parser/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SQLHelp.dir/generated/SQLParser.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SQLHelp.dir/generated/SQLParser.o -c /mnt/d/database2021/src/parser/generated/SQLParser.cpp

CMakeFiles/SQLHelp.dir/generated/SQLParser.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SQLHelp.dir/generated/SQLParser.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/database2021/src/parser/generated/SQLParser.cpp > CMakeFiles/SQLHelp.dir/generated/SQLParser.i

CMakeFiles/SQLHelp.dir/generated/SQLParser.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SQLHelp.dir/generated/SQLParser.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/database2021/src/parser/generated/SQLParser.cpp -o CMakeFiles/SQLHelp.dir/generated/SQLParser.s

CMakeFiles/SQLHelp.dir/generated/SQLVisitor.o: CMakeFiles/SQLHelp.dir/flags.make
CMakeFiles/SQLHelp.dir/generated/SQLVisitor.o: generated/SQLVisitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/database2021/src/parser/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SQLHelp.dir/generated/SQLVisitor.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SQLHelp.dir/generated/SQLVisitor.o -c /mnt/d/database2021/src/parser/generated/SQLVisitor.cpp

CMakeFiles/SQLHelp.dir/generated/SQLVisitor.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SQLHelp.dir/generated/SQLVisitor.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/database2021/src/parser/generated/SQLVisitor.cpp > CMakeFiles/SQLHelp.dir/generated/SQLVisitor.i

CMakeFiles/SQLHelp.dir/generated/SQLVisitor.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SQLHelp.dir/generated/SQLVisitor.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/database2021/src/parser/generated/SQLVisitor.cpp -o CMakeFiles/SQLHelp.dir/generated/SQLVisitor.s

CMakeFiles/SQLHelp.dir/generated/MyVisitor.o: CMakeFiles/SQLHelp.dir/flags.make
CMakeFiles/SQLHelp.dir/generated/MyVisitor.o: generated/MyVisitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/database2021/src/parser/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/SQLHelp.dir/generated/MyVisitor.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SQLHelp.dir/generated/MyVisitor.o -c /mnt/d/database2021/src/parser/generated/MyVisitor.cpp

CMakeFiles/SQLHelp.dir/generated/MyVisitor.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SQLHelp.dir/generated/MyVisitor.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/database2021/src/parser/generated/MyVisitor.cpp > CMakeFiles/SQLHelp.dir/generated/MyVisitor.i

CMakeFiles/SQLHelp.dir/generated/MyVisitor.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SQLHelp.dir/generated/MyVisitor.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/database2021/src/parser/generated/MyVisitor.cpp -o CMakeFiles/SQLHelp.dir/generated/MyVisitor.s

CMakeFiles/SQLHelp.dir/MyParser.o: CMakeFiles/SQLHelp.dir/flags.make
CMakeFiles/SQLHelp.dir/MyParser.o: MyParser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/database2021/src/parser/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/SQLHelp.dir/MyParser.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SQLHelp.dir/MyParser.o -c /mnt/d/database2021/src/parser/MyParser.cpp

CMakeFiles/SQLHelp.dir/MyParser.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SQLHelp.dir/MyParser.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/database2021/src/parser/MyParser.cpp > CMakeFiles/SQLHelp.dir/MyParser.i

CMakeFiles/SQLHelp.dir/MyParser.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SQLHelp.dir/MyParser.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/database2021/src/parser/MyParser.cpp -o CMakeFiles/SQLHelp.dir/MyParser.s

# Object files for target SQLHelp
SQLHelp_OBJECTS = \
"CMakeFiles/SQLHelp.dir/generated/SQLBaseVisitor.o" \
"CMakeFiles/SQLHelp.dir/generated/SQLLexer.o" \
"CMakeFiles/SQLHelp.dir/generated/SQLParser.o" \
"CMakeFiles/SQLHelp.dir/generated/SQLVisitor.o" \
"CMakeFiles/SQLHelp.dir/generated/MyVisitor.o" \
"CMakeFiles/SQLHelp.dir/MyParser.o"

# External object files for target SQLHelp
SQLHelp_EXTERNAL_OBJECTS =

SQLHelp: CMakeFiles/SQLHelp.dir/generated/SQLBaseVisitor.o
SQLHelp: CMakeFiles/SQLHelp.dir/generated/SQLLexer.o
SQLHelp: CMakeFiles/SQLHelp.dir/generated/SQLParser.o
SQLHelp: CMakeFiles/SQLHelp.dir/generated/SQLVisitor.o
SQLHelp: CMakeFiles/SQLHelp.dir/generated/MyVisitor.o
SQLHelp: CMakeFiles/SQLHelp.dir/MyParser.o
SQLHelp: CMakeFiles/SQLHelp.dir/build.make
SQLHelp: libantlr4-cpp-runtime.a
SQLHelp: CMakeFiles/SQLHelp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/d/database2021/src/parser/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable SQLHelp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SQLHelp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SQLHelp.dir/build: SQLHelp

.PHONY : CMakeFiles/SQLHelp.dir/build

CMakeFiles/SQLHelp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SQLHelp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SQLHelp.dir/clean

CMakeFiles/SQLHelp.dir/depend:
	cd /mnt/d/database2021/src/parser && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/database2021/src/parser /mnt/d/database2021/src/parser /mnt/d/database2021/src/parser /mnt/d/database2021/src/parser /mnt/d/database2021/src/parser/CMakeFiles/SQLHelp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SQLHelp.dir/depend

