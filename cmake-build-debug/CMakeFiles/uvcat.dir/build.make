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
include CMakeFiles/uvcat.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/uvcat.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/uvcat.dir/flags.make

CMakeFiles/uvcat.dir/uvcat/main.cpp.o: CMakeFiles/uvcat.dir/flags.make
CMakeFiles/uvcat.dir/uvcat/main.cpp.o: ../uvcat/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/wualex/Documents/libuvLearningNote/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/uvcat.dir/uvcat/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uvcat.dir/uvcat/main.cpp.o -c /Users/wualex/Documents/libuvLearningNote/uvcat/main.cpp

CMakeFiles/uvcat.dir/uvcat/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uvcat.dir/uvcat/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wualex/Documents/libuvLearningNote/uvcat/main.cpp > CMakeFiles/uvcat.dir/uvcat/main.cpp.i

CMakeFiles/uvcat.dir/uvcat/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uvcat.dir/uvcat/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wualex/Documents/libuvLearningNote/uvcat/main.cpp -o CMakeFiles/uvcat.dir/uvcat/main.cpp.s

# Object files for target uvcat
uvcat_OBJECTS = \
"CMakeFiles/uvcat.dir/uvcat/main.cpp.o"

# External object files for target uvcat
uvcat_EXTERNAL_OBJECTS =

uvcat: CMakeFiles/uvcat.dir/uvcat/main.cpp.o
uvcat: CMakeFiles/uvcat.dir/build.make
uvcat: CMakeFiles/uvcat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/wualex/Documents/libuvLearningNote/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable uvcat"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/uvcat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/uvcat.dir/build: uvcat

.PHONY : CMakeFiles/uvcat.dir/build

CMakeFiles/uvcat.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/uvcat.dir/cmake_clean.cmake
.PHONY : CMakeFiles/uvcat.dir/clean

CMakeFiles/uvcat.dir/depend:
	cd /Users/wualex/Documents/libuvLearningNote/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/wualex/Documents/libuvLearningNote /Users/wualex/Documents/libuvLearningNote /Users/wualex/Documents/libuvLearningNote/cmake-build-debug /Users/wualex/Documents/libuvLearningNote/cmake-build-debug /Users/wualex/Documents/libuvLearningNote/cmake-build-debug/CMakeFiles/uvcat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/uvcat.dir/depend

