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
CMAKE_SOURCE_DIR = "/home/gabriel/Escritorio/dca/DCA - Cmake"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/gabriel/Escritorio/dca/DCA - Cmake"

# Include any dependencies generated for this target.
include CMakeFiles/libreria.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/libreria.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/libreria.dir/flags.make

CMakeFiles/libreria.dir/Calculator.cpp.o: CMakeFiles/libreria.dir/flags.make
CMakeFiles/libreria.dir/Calculator.cpp.o: Calculator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/gabriel/Escritorio/dca/DCA - Cmake/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/libreria.dir/Calculator.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libreria.dir/Calculator.cpp.o -c "/home/gabriel/Escritorio/dca/DCA - Cmake/Calculator.cpp"

CMakeFiles/libreria.dir/Calculator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libreria.dir/Calculator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/gabriel/Escritorio/dca/DCA - Cmake/Calculator.cpp" > CMakeFiles/libreria.dir/Calculator.cpp.i

CMakeFiles/libreria.dir/Calculator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libreria.dir/Calculator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/gabriel/Escritorio/dca/DCA - Cmake/Calculator.cpp" -o CMakeFiles/libreria.dir/Calculator.cpp.s

# Object files for target libreria
libreria_OBJECTS = \
"CMakeFiles/libreria.dir/Calculator.cpp.o"

# External object files for target libreria
libreria_EXTERNAL_OBJECTS =

liblibreria.a: CMakeFiles/libreria.dir/Calculator.cpp.o
liblibreria.a: CMakeFiles/libreria.dir/build.make
liblibreria.a: CMakeFiles/libreria.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/gabriel/Escritorio/dca/DCA - Cmake/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblibreria.a"
	$(CMAKE_COMMAND) -P CMakeFiles/libreria.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libreria.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/libreria.dir/build: liblibreria.a

.PHONY : CMakeFiles/libreria.dir/build

CMakeFiles/libreria.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/libreria.dir/cmake_clean.cmake
.PHONY : CMakeFiles/libreria.dir/clean

CMakeFiles/libreria.dir/depend:
	cd "/home/gabriel/Escritorio/dca/DCA - Cmake" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/gabriel/Escritorio/dca/DCA - Cmake" "/home/gabriel/Escritorio/dca/DCA - Cmake" "/home/gabriel/Escritorio/dca/DCA - Cmake" "/home/gabriel/Escritorio/dca/DCA - Cmake" "/home/gabriel/Escritorio/dca/DCA - Cmake/CMakeFiles/libreria.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/libreria.dir/depend

