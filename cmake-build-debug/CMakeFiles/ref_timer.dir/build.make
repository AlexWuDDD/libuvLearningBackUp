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
include CMakeFiles/ref_timer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ref_timer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ref_timer.dir/flags.make

CMakeFiles/ref_timer.dir/ref_timer/main.cpp.o: CMakeFiles/ref_timer.dir/flags.make
CMakeFiles/ref_timer.dir/ref_timer/main.cpp.o: ../ref_timer/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/wualex/Documents/libuvLearningNote/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ref_timer.dir/ref_timer/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ref_timer.dir/ref_timer/main.cpp.o -c /Users/wualex/Documents/libuvLearningNote/ref_timer/main.cpp

CMakeFiles/ref_timer.dir/ref_timer/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ref_timer.dir/ref_timer/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wualex/Documents/libuvLearningNote/ref_timer/main.cpp > CMakeFiles/ref_timer.dir/ref_timer/main.cpp.i

CMakeFiles/ref_timer.dir/ref_timer/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ref_timer.dir/ref_timer/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wualex/Documents/libuvLearningNote/ref_timer/main.cpp -o CMakeFiles/ref_timer.dir/ref_timer/main.cpp.s

# Object files for target ref_timer
ref_timer_OBJECTS = \
"CMakeFiles/ref_timer.dir/ref_timer/main.cpp.o"

# External object files for target ref_timer
ref_timer_EXTERNAL_OBJECTS =

ref_timer: CMakeFiles/ref_timer.dir/ref_timer/main.cpp.o
ref_timer: CMakeFiles/ref_timer.dir/build.make
ref_timer: CMakeFiles/ref_timer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/wualex/Documents/libuvLearningNote/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ref_timer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ref_timer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ref_timer.dir/build: ref_timer

.PHONY : CMakeFiles/ref_timer.dir/build

CMakeFiles/ref_timer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ref_timer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ref_timer.dir/clean

CMakeFiles/ref_timer.dir/depend:
	cd /Users/wualex/Documents/libuvLearningNote/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/wualex/Documents/libuvLearningNote /Users/wualex/Documents/libuvLearningNote /Users/wualex/Documents/libuvLearningNote/cmake-build-debug /Users/wualex/Documents/libuvLearningNote/cmake-build-debug /Users/wualex/Documents/libuvLearningNote/cmake-build-debug/CMakeFiles/ref_timer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ref_timer.dir/depend
