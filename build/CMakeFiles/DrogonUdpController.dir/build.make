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
include CMakeFiles/DrogonUdpController.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/DrogonUdpController.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/DrogonUdpController.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DrogonUdpController.dir/flags.make

CMakeFiles/DrogonUdpController.dir/main.cc.o: CMakeFiles/DrogonUdpController.dir/flags.make
CMakeFiles/DrogonUdpController.dir/main.cc.o: ../main.cc
CMakeFiles/DrogonUdpController.dir/main.cc.o: CMakeFiles/DrogonUdpController.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jes/git/UdpRelayWebinterface/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DrogonUdpController.dir/main.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DrogonUdpController.dir/main.cc.o -MF CMakeFiles/DrogonUdpController.dir/main.cc.o.d -o CMakeFiles/DrogonUdpController.dir/main.cc.o -c /home/jes/git/UdpRelayWebinterface/main.cc

CMakeFiles/DrogonUdpController.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DrogonUdpController.dir/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jes/git/UdpRelayWebinterface/main.cc > CMakeFiles/DrogonUdpController.dir/main.cc.i

CMakeFiles/DrogonUdpController.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DrogonUdpController.dir/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jes/git/UdpRelayWebinterface/main.cc -o CMakeFiles/DrogonUdpController.dir/main.cc.s

CMakeFiles/DrogonUdpController.dir/UdpControl/RelayController.cpp.o: CMakeFiles/DrogonUdpController.dir/flags.make
CMakeFiles/DrogonUdpController.dir/UdpControl/RelayController.cpp.o: ../UdpControl/RelayController.cpp
CMakeFiles/DrogonUdpController.dir/UdpControl/RelayController.cpp.o: CMakeFiles/DrogonUdpController.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jes/git/UdpRelayWebinterface/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/DrogonUdpController.dir/UdpControl/RelayController.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DrogonUdpController.dir/UdpControl/RelayController.cpp.o -MF CMakeFiles/DrogonUdpController.dir/UdpControl/RelayController.cpp.o.d -o CMakeFiles/DrogonUdpController.dir/UdpControl/RelayController.cpp.o -c /home/jes/git/UdpRelayWebinterface/UdpControl/RelayController.cpp

CMakeFiles/DrogonUdpController.dir/UdpControl/RelayController.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DrogonUdpController.dir/UdpControl/RelayController.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jes/git/UdpRelayWebinterface/UdpControl/RelayController.cpp > CMakeFiles/DrogonUdpController.dir/UdpControl/RelayController.cpp.i

CMakeFiles/DrogonUdpController.dir/UdpControl/RelayController.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DrogonUdpController.dir/UdpControl/RelayController.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jes/git/UdpRelayWebinterface/UdpControl/RelayController.cpp -o CMakeFiles/DrogonUdpController.dir/UdpControl/RelayController.cpp.s

# Object files for target DrogonUdpController
DrogonUdpController_OBJECTS = \
"CMakeFiles/DrogonUdpController.dir/main.cc.o" \
"CMakeFiles/DrogonUdpController.dir/UdpControl/RelayController.cpp.o"

# External object files for target DrogonUdpController
DrogonUdpController_EXTERNAL_OBJECTS =

DrogonUdpController: CMakeFiles/DrogonUdpController.dir/main.cc.o
DrogonUdpController: CMakeFiles/DrogonUdpController.dir/UdpControl/RelayController.cpp.o
DrogonUdpController: CMakeFiles/DrogonUdpController.dir/build.make
DrogonUdpController: /usr/local/lib/libdrogon.a
DrogonUdpController: /usr/lib/x86_64-linux-gnu/libfmt.so.8.1.1
DrogonUdpController: /usr/local/lib/libtrantor.a
DrogonUdpController: /usr/lib/x86_64-linux-gnu/libssl.so
DrogonUdpController: /usr/lib/x86_64-linux-gnu/libcrypto.so
DrogonUdpController: /usr/lib/x86_64-linux-gnu/libjsoncpp.so
DrogonUdpController: /usr/lib/x86_64-linux-gnu/libuuid.so
DrogonUdpController: /usr/lib/x86_64-linux-gnu/libz.so
DrogonUdpController: CMakeFiles/DrogonUdpController.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jes/git/UdpRelayWebinterface/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable DrogonUdpController"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DrogonUdpController.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DrogonUdpController.dir/build: DrogonUdpController
.PHONY : CMakeFiles/DrogonUdpController.dir/build

CMakeFiles/DrogonUdpController.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DrogonUdpController.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DrogonUdpController.dir/clean

CMakeFiles/DrogonUdpController.dir/depend:
	cd /home/jes/git/UdpRelayWebinterface/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jes/git/UdpRelayWebinterface /home/jes/git/UdpRelayWebinterface /home/jes/git/UdpRelayWebinterface/build /home/jes/git/UdpRelayWebinterface/build /home/jes/git/UdpRelayWebinterface/build/CMakeFiles/DrogonUdpController.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DrogonUdpController.dir/depend

