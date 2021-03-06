# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/caizhw/projects/cuda-cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/caizhw/projects/cuda-cmake/build

# Include any dependencies generated for this target.
include CMakeFiles/cusolver_csrqr_example1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cusolver_csrqr_example1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cusolver_csrqr_example1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cusolver_csrqr_example1.dir/flags.make

CMakeFiles/cusolver_csrqr_example1.dir/src/cusolver_csrqr_example1.cu.o: CMakeFiles/cusolver_csrqr_example1.dir/flags.make
CMakeFiles/cusolver_csrqr_example1.dir/src/cusolver_csrqr_example1.cu.o: ../src/cusolver_csrqr_example1.cu
CMakeFiles/cusolver_csrqr_example1.dir/src/cusolver_csrqr_example1.cu.o: CMakeFiles/cusolver_csrqr_example1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/caizhw/projects/cuda-cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object CMakeFiles/cusolver_csrqr_example1.dir/src/cusolver_csrqr_example1.cu.o"
	/usr/local/cuda-11.2/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT CMakeFiles/cusolver_csrqr_example1.dir/src/cusolver_csrqr_example1.cu.o -MF CMakeFiles/cusolver_csrqr_example1.dir/src/cusolver_csrqr_example1.cu.o.d -x cu -c /home/caizhw/projects/cuda-cmake/src/cusolver_csrqr_example1.cu -o CMakeFiles/cusolver_csrqr_example1.dir/src/cusolver_csrqr_example1.cu.o

CMakeFiles/cusolver_csrqr_example1.dir/src/cusolver_csrqr_example1.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cusolver_csrqr_example1.dir/src/cusolver_csrqr_example1.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/cusolver_csrqr_example1.dir/src/cusolver_csrqr_example1.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cusolver_csrqr_example1.dir/src/cusolver_csrqr_example1.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target cusolver_csrqr_example1
cusolver_csrqr_example1_OBJECTS = \
"CMakeFiles/cusolver_csrqr_example1.dir/src/cusolver_csrqr_example1.cu.o"

# External object files for target cusolver_csrqr_example1
cusolver_csrqr_example1_EXTERNAL_OBJECTS =

cusolver_csrqr_example1: CMakeFiles/cusolver_csrqr_example1.dir/src/cusolver_csrqr_example1.cu.o
cusolver_csrqr_example1: CMakeFiles/cusolver_csrqr_example1.dir/build.make
cusolver_csrqr_example1: CMakeFiles/cusolver_csrqr_example1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/caizhw/projects/cuda-cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA executable cusolver_csrqr_example1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cusolver_csrqr_example1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cusolver_csrqr_example1.dir/build: cusolver_csrqr_example1
.PHONY : CMakeFiles/cusolver_csrqr_example1.dir/build

CMakeFiles/cusolver_csrqr_example1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cusolver_csrqr_example1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cusolver_csrqr_example1.dir/clean

CMakeFiles/cusolver_csrqr_example1.dir/depend:
	cd /home/caizhw/projects/cuda-cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/caizhw/projects/cuda-cmake /home/caizhw/projects/cuda-cmake /home/caizhw/projects/cuda-cmake/build /home/caizhw/projects/cuda-cmake/build /home/caizhw/projects/cuda-cmake/build/CMakeFiles/cusolver_csrqr_example1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cusolver_csrqr_example1.dir/depend

