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
CMAKE_COMMAND = /opt/clion/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/herrlevin_/Dev/DHBW/20200313_Klausur

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/herrlevin_/Dev/DHBW/20200313_Klausur/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/20200313_Klausur.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/20200313_Klausur.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/20200313_Klausur.dir/flags.make

CMakeFiles/20200313_Klausur.dir/main.c.o: CMakeFiles/20200313_Klausur.dir/flags.make
CMakeFiles/20200313_Klausur.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/herrlevin_/Dev/DHBW/20200313_Klausur/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/20200313_Klausur.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/20200313_Klausur.dir/main.c.o   -c /home/herrlevin_/Dev/DHBW/20200313_Klausur/main.c

CMakeFiles/20200313_Klausur.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/20200313_Klausur.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/herrlevin_/Dev/DHBW/20200313_Klausur/main.c > CMakeFiles/20200313_Klausur.dir/main.c.i

CMakeFiles/20200313_Klausur.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/20200313_Klausur.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/herrlevin_/Dev/DHBW/20200313_Klausur/main.c -o CMakeFiles/20200313_Klausur.dir/main.c.s

# Object files for target 20200313_Klausur
20200313_Klausur_OBJECTS = \
"CMakeFiles/20200313_Klausur.dir/main.c.o"

# External object files for target 20200313_Klausur
20200313_Klausur_EXTERNAL_OBJECTS =

20200313_Klausur: CMakeFiles/20200313_Klausur.dir/main.c.o
20200313_Klausur: CMakeFiles/20200313_Klausur.dir/build.make
20200313_Klausur: CMakeFiles/20200313_Klausur.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/herrlevin_/Dev/DHBW/20200313_Klausur/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable 20200313_Klausur"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/20200313_Klausur.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/20200313_Klausur.dir/build: 20200313_Klausur

.PHONY : CMakeFiles/20200313_Klausur.dir/build

CMakeFiles/20200313_Klausur.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/20200313_Klausur.dir/cmake_clean.cmake
.PHONY : CMakeFiles/20200313_Klausur.dir/clean

CMakeFiles/20200313_Klausur.dir/depend:
	cd /home/herrlevin_/Dev/DHBW/20200313_Klausur/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/herrlevin_/Dev/DHBW/20200313_Klausur /home/herrlevin_/Dev/DHBW/20200313_Klausur /home/herrlevin_/Dev/DHBW/20200313_Klausur/cmake-build-debug /home/herrlevin_/Dev/DHBW/20200313_Klausur/cmake-build-debug /home/herrlevin_/Dev/DHBW/20200313_Klausur/cmake-build-debug/CMakeFiles/20200313_Klausur.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/20200313_Klausur.dir/depend
