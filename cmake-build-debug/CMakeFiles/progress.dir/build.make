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
include CMakeFiles/progress.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/progress.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/progress.dir/flags.make

CMakeFiles/progress.dir/progress/main.cpp.o: CMakeFiles/progress.dir/flags.make
CMakeFiles/progress.dir/progress/main.cpp.o: ../progress/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/wualex/Documents/libuvLearningNote/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/progress.dir/progress/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/progress.dir/progress/main.cpp.o -c /Users/wualex/Documents/libuvLearningNote/progress/main.cpp

CMakeFiles/progress.dir/progress/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/progress.dir/progress/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wualex/Documents/libuvLearningNote/progress/main.cpp > CMakeFiles/progress.dir/progress/main.cpp.i

CMakeFiles/progress.dir/progress/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/progress.dir/progress/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wualex/Documents/libuvLearningNote/progress/main.cpp -o CMakeFiles/progress.dir/progress/main.cpp.s

# Object files for target progress
progress_OBJECTS = \
"CMakeFiles/progress.dir/progress/main.cpp.o"

# External object files for target progress
progress_EXTERNAL_OBJECTS =

progress: CMakeFiles/progress.dir/progress/main.cpp.o
progress: CMakeFiles/progress.dir/build.make
progress: CMakeFiles/progress.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/wualex/Documents/libuvLearningNote/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable progress"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/progress.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/progress.dir/build: progress

.PHONY : CMakeFiles/progress.dir/build

CMakeFiles/progress.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/progress.dir/cmake_clean.cmake
.PHONY : CMakeFiles/progress.dir/clean

CMakeFiles/progress.dir/depend:
	cd /Users/wualex/Documents/libuvLearningNote/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/wualex/Documents/libuvLearningNote /Users/wualex/Documents/libuvLearningNote /Users/wualex/Documents/libuvLearningNote/cmake-build-debug /Users/wualex/Documents/libuvLearningNote/cmake-build-debug /Users/wualex/Documents/libuvLearningNote/cmake-build-debug/CMakeFiles/progress.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/progress.dir/depend
