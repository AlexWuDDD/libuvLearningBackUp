# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/wualex/Documents/libuvLearningNote

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/wualex/Documents/libuvLearningNote/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/uvstop.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/uvstop.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/uvstop.dir/flags.make

CMakeFiles/uvstop.dir/uvstop/main.cpp.o: CMakeFiles/uvstop.dir/flags.make
CMakeFiles/uvstop.dir/uvstop/main.cpp.o: ../uvstop/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/wualex/Documents/libuvLearningNote/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/uvstop.dir/uvstop/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uvstop.dir/uvstop/main.cpp.o -c /Users/wualex/Documents/libuvLearningNote/uvstop/main.cpp

CMakeFiles/uvstop.dir/uvstop/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uvstop.dir/uvstop/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wualex/Documents/libuvLearningNote/uvstop/main.cpp > CMakeFiles/uvstop.dir/uvstop/main.cpp.i

CMakeFiles/uvstop.dir/uvstop/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uvstop.dir/uvstop/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wualex/Documents/libuvLearningNote/uvstop/main.cpp -o CMakeFiles/uvstop.dir/uvstop/main.cpp.s

# Object files for target uvstop
uvstop_OBJECTS = \
"CMakeFiles/uvstop.dir/uvstop/main.cpp.o"

# External object files for target uvstop
uvstop_EXTERNAL_OBJECTS =

uvstop: CMakeFiles/uvstop.dir/uvstop/main.cpp.o
uvstop: CMakeFiles/uvstop.dir/build.make
uvstop: CMakeFiles/uvstop.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/wualex/Documents/libuvLearningNote/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable uvstop"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/uvstop.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/uvstop.dir/build: uvstop

.PHONY : CMakeFiles/uvstop.dir/build

CMakeFiles/uvstop.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/uvstop.dir/cmake_clean.cmake
.PHONY : CMakeFiles/uvstop.dir/clean

CMakeFiles/uvstop.dir/depend:
	cd /Users/wualex/Documents/libuvLearningNote/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/wualex/Documents/libuvLearningNote /Users/wualex/Documents/libuvLearningNote /Users/wualex/Documents/libuvLearningNote/cmake-build-debug /Users/wualex/Documents/libuvLearningNote/cmake-build-debug /Users/wualex/Documents/libuvLearningNote/cmake-build-debug/CMakeFiles/uvstop.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/uvstop.dir/depend

