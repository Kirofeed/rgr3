# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = "/Users/kirilldrozhzha/Applications/CLion Nova.app/Contents/bin/cmake/mac/aarch64/bin/cmake"

# The command to remove a file.
RM = "/Users/kirilldrozhzha/Applications/CLion Nova.app/Contents/bin/cmake/mac/aarch64/bin/cmake" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kirilldrozhzha/CLionProjects/rgr3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kirilldrozhzha/CLionProjects/rgr3/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Library.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Library.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Library.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Library.dir/flags.make

CMakeFiles/Library.dir/lib.cpp.o: CMakeFiles/Library.dir/flags.make
CMakeFiles/Library.dir/lib.cpp.o: /Users/kirilldrozhzha/CLionProjects/rgr3/lib.cpp
CMakeFiles/Library.dir/lib.cpp.o: CMakeFiles/Library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kirilldrozhzha/CLionProjects/rgr3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Library.dir/lib.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Library.dir/lib.cpp.o -MF CMakeFiles/Library.dir/lib.cpp.o.d -o CMakeFiles/Library.dir/lib.cpp.o -c /Users/kirilldrozhzha/CLionProjects/rgr3/lib.cpp

CMakeFiles/Library.dir/lib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Library.dir/lib.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kirilldrozhzha/CLionProjects/rgr3/lib.cpp > CMakeFiles/Library.dir/lib.cpp.i

CMakeFiles/Library.dir/lib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Library.dir/lib.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kirilldrozhzha/CLionProjects/rgr3/lib.cpp -o CMakeFiles/Library.dir/lib.cpp.s

# Object files for target Library
Library_OBJECTS = \
"CMakeFiles/Library.dir/lib.cpp.o"

# External object files for target Library
Library_EXTERNAL_OBJECTS =

Library: CMakeFiles/Library.dir/lib.cpp.o
Library: CMakeFiles/Library.dir/build.make
Library: CMakeFiles/Library.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/kirilldrozhzha/CLionProjects/rgr3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Library"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Library.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Library.dir/build: Library
.PHONY : CMakeFiles/Library.dir/build

CMakeFiles/Library.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Library.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Library.dir/clean

CMakeFiles/Library.dir/depend:
	cd /Users/kirilldrozhzha/CLionProjects/rgr3/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kirilldrozhzha/CLionProjects/rgr3 /Users/kirilldrozhzha/CLionProjects/rgr3 /Users/kirilldrozhzha/CLionProjects/rgr3/cmake-build-debug /Users/kirilldrozhzha/CLionProjects/rgr3/cmake-build-debug /Users/kirilldrozhzha/CLionProjects/rgr3/cmake-build-debug/CMakeFiles/Library.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Library.dir/depend
