# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Waterloo\Sudoku Project"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Waterloo\Sudoku Project\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Sudoku_Project.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Sudoku_Project.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Sudoku_Project.dir/flags.make

CMakeFiles/Sudoku_Project.dir/main.cpp.obj: CMakeFiles/Sudoku_Project.dir/flags.make
CMakeFiles/Sudoku_Project.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Waterloo\Sudoku Project\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Sudoku_Project.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Sudoku_Project.dir\main.cpp.obj -c "C:\Waterloo\Sudoku Project\main.cpp"

CMakeFiles/Sudoku_Project.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Sudoku_Project.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Waterloo\Sudoku Project\main.cpp" > CMakeFiles\Sudoku_Project.dir\main.cpp.i

CMakeFiles/Sudoku_Project.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Sudoku_Project.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Waterloo\Sudoku Project\main.cpp" -o CMakeFiles\Sudoku_Project.dir\main.cpp.s

# Object files for target Sudoku_Project
Sudoku_Project_OBJECTS = \
"CMakeFiles/Sudoku_Project.dir/main.cpp.obj"

# External object files for target Sudoku_Project
Sudoku_Project_EXTERNAL_OBJECTS =

Sudoku_Project.exe: CMakeFiles/Sudoku_Project.dir/main.cpp.obj
Sudoku_Project.exe: CMakeFiles/Sudoku_Project.dir/build.make
Sudoku_Project.exe: CMakeFiles/Sudoku_Project.dir/linklibs.rsp
Sudoku_Project.exe: CMakeFiles/Sudoku_Project.dir/objects1.rsp
Sudoku_Project.exe: CMakeFiles/Sudoku_Project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Waterloo\Sudoku Project\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Sudoku_Project.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Sudoku_Project.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Sudoku_Project.dir/build: Sudoku_Project.exe

.PHONY : CMakeFiles/Sudoku_Project.dir/build

CMakeFiles/Sudoku_Project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Sudoku_Project.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Sudoku_Project.dir/clean

CMakeFiles/Sudoku_Project.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Waterloo\Sudoku Project" "C:\Waterloo\Sudoku Project" "C:\Waterloo\Sudoku Project\cmake-build-debug" "C:\Waterloo\Sudoku Project\cmake-build-debug" "C:\Waterloo\Sudoku Project\cmake-build-debug\CMakeFiles\Sudoku_Project.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Sudoku_Project.dir/depend
