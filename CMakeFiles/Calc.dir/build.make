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
CMAKE_SOURCE_DIR = /home/gabriel/Escritorio/dca

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gabriel/Escritorio/dca

# Include any dependencies generated for this target.
include CMakeFiles/Calc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Calc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Calc.dir/flags.make

CMakeFiles/Calc.dir/Calculator.cpp.o: CMakeFiles/Calc.dir/flags.make
CMakeFiles/Calc.dir/Calculator.cpp.o: Calculator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabriel/Escritorio/dca/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Calc.dir/Calculator.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Calc.dir/Calculator.cpp.o -c /home/gabriel/Escritorio/dca/Calculator.cpp

CMakeFiles/Calc.dir/Calculator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Calc.dir/Calculator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gabriel/Escritorio/dca/Calculator.cpp > CMakeFiles/Calc.dir/Calculator.cpp.i

CMakeFiles/Calc.dir/Calculator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Calc.dir/Calculator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gabriel/Escritorio/dca/Calculator.cpp -o CMakeFiles/Calc.dir/Calculator.cpp.s

CMakeFiles/Calc.dir/main.cpp.o: CMakeFiles/Calc.dir/flags.make
CMakeFiles/Calc.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabriel/Escritorio/dca/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Calc.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Calc.dir/main.cpp.o -c /home/gabriel/Escritorio/dca/main.cpp

CMakeFiles/Calc.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Calc.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gabriel/Escritorio/dca/main.cpp > CMakeFiles/Calc.dir/main.cpp.i

CMakeFiles/Calc.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Calc.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gabriel/Escritorio/dca/main.cpp -o CMakeFiles/Calc.dir/main.cpp.s

# Object files for target Calc
Calc_OBJECTS = \
"CMakeFiles/Calc.dir/Calculator.cpp.o" \
"CMakeFiles/Calc.dir/main.cpp.o"

# External object files for target Calc
Calc_EXTERNAL_OBJECTS =

Calc: CMakeFiles/Calc.dir/Calculator.cpp.o
Calc: CMakeFiles/Calc.dir/main.cpp.o
Calc: CMakeFiles/Calc.dir/build.make
Calc: CMakeFiles/Calc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gabriel/Escritorio/dca/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Calc"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Calc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Calc.dir/build: Calc

.PHONY : CMakeFiles/Calc.dir/build

CMakeFiles/Calc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Calc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Calc.dir/clean

CMakeFiles/Calc.dir/depend:
	cd /home/gabriel/Escritorio/dca && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gabriel/Escritorio/dca /home/gabriel/Escritorio/dca /home/gabriel/Escritorio/dca /home/gabriel/Escritorio/dca /home/gabriel/Escritorio/dca/CMakeFiles/Calc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Calc.dir/depend

