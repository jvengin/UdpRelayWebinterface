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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jes/git/UdpRelayWebinterface

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jes/git/UdpRelayWebinterface/build

# Include any dependencies generated for this target.
include test/CMakeFiles/DrogonUdpController_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/DrogonUdpController_test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/DrogonUdpController_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/DrogonUdpController_test.dir/flags.make

test/CMakeFiles/DrogonUdpController_test.dir/test_main.cc.o: test/CMakeFiles/DrogonUdpController_test.dir/flags.make
test/CMakeFiles/DrogonUdpController_test.dir/test_main.cc.o: ../test/test_main.cc
test/CMakeFiles/DrogonUdpController_test.dir/test_main.cc.o: test/CMakeFiles/DrogonUdpController_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jes/git/UdpRelayWebinterface/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/DrogonUdpController_test.dir/test_main.cc.o"
	cd /home/jes/git/UdpRelayWebinterface/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/DrogonUdpController_test.dir/test_main.cc.o -MF CMakeFiles/DrogonUdpController_test.dir/test_main.cc.o.d -o CMakeFiles/DrogonUdpController_test.dir/test_main.cc.o -c /home/jes/git/UdpRelayWebinterface/test/test_main.cc

test/CMakeFiles/DrogonUdpController_test.dir/test_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DrogonUdpController_test.dir/test_main.cc.i"
	cd /home/jes/git/UdpRelayWebinterface/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jes/git/UdpRelayWebinterface/test/test_main.cc > CMakeFiles/DrogonUdpController_test.dir/test_main.cc.i

test/CMakeFiles/DrogonUdpController_test.dir/test_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DrogonUdpController_test.dir/test_main.cc.s"
	cd /home/jes/git/UdpRelayWebinterface/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jes/git/UdpRelayWebinterface/test/test_main.cc -o CMakeFiles/DrogonUdpController_test.dir/test_main.cc.s

# Object files for target DrogonUdpController_test
DrogonUdpController_test_OBJECTS = \
"CMakeFiles/DrogonUdpController_test.dir/test_main.cc.o"

# External object files for target DrogonUdpController_test
DrogonUdpController_test_EXTERNAL_OBJECTS =

test/DrogonUdpController_test: test/CMakeFiles/DrogonUdpController_test.dir/test_main.cc.o
test/DrogonUdpController_test: test/CMakeFiles/DrogonUdpController_test.dir/build.make
test/DrogonUdpController_test: /usr/local/lib/libdrogon.a
test/DrogonUdpController_test: /usr/local/lib/libtrantor.a
test/DrogonUdpController_test: /usr/lib/x86_64-linux-gnu/libssl.so
test/DrogonUdpController_test: /usr/lib/x86_64-linux-gnu/libcrypto.so
test/DrogonUdpController_test: /usr/lib/x86_64-linux-gnu/libjsoncpp.so
test/DrogonUdpController_test: /usr/lib/x86_64-linux-gnu/libuuid.so
test/DrogonUdpController_test: /usr/lib/x86_64-linux-gnu/libz.so
test/DrogonUdpController_test: test/CMakeFiles/DrogonUdpController_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jes/git/UdpRelayWebinterface/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable DrogonUdpController_test"
	cd /home/jes/git/UdpRelayWebinterface/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DrogonUdpController_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/DrogonUdpController_test.dir/build: test/DrogonUdpController_test
.PHONY : test/CMakeFiles/DrogonUdpController_test.dir/build

test/CMakeFiles/DrogonUdpController_test.dir/clean:
	cd /home/jes/git/UdpRelayWebinterface/build/test && $(CMAKE_COMMAND) -P CMakeFiles/DrogonUdpController_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/DrogonUdpController_test.dir/clean

test/CMakeFiles/DrogonUdpController_test.dir/depend:
	cd /home/jes/git/UdpRelayWebinterface/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jes/git/UdpRelayWebinterface /home/jes/git/UdpRelayWebinterface/test /home/jes/git/UdpRelayWebinterface/build /home/jes/git/UdpRelayWebinterface/build/test /home/jes/git/UdpRelayWebinterface/build/test/CMakeFiles/DrogonUdpController_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/DrogonUdpController_test.dir/depend
