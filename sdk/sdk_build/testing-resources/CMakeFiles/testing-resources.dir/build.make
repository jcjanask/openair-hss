# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /snap/cmake/930/bin/cmake

# The command to remove a file.
RM = /snap/cmake/930/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/sdk/aws-sdk-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/sdk/sdk_build

# Include any dependencies generated for this target.
include testing-resources/CMakeFiles/testing-resources.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include testing-resources/CMakeFiles/testing-resources.dir/compiler_depend.make

# Include the progress variables for this target.
include testing-resources/CMakeFiles/testing-resources.dir/progress.make

# Include the compile flags for this target's objects.
include testing-resources/CMakeFiles/testing-resources.dir/flags.make

testing-resources/CMakeFiles/testing-resources.dir/source/MemoryTesting.cpp.o: testing-resources/CMakeFiles/testing-resources.dir/flags.make
testing-resources/CMakeFiles/testing-resources.dir/source/MemoryTesting.cpp.o: testing-resources/CMakeFiles/testing-resources.dir/includes_CXX.rsp
testing-resources/CMakeFiles/testing-resources.dir/source/MemoryTesting.cpp.o: /home/ubuntu/sdk/aws-sdk-cpp/testing-resources/source/MemoryTesting.cpp
testing-resources/CMakeFiles/testing-resources.dir/source/MemoryTesting.cpp.o: testing-resources/CMakeFiles/testing-resources.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object testing-resources/CMakeFiles/testing-resources.dir/source/MemoryTesting.cpp.o"
	cd /home/ubuntu/sdk/sdk_build/testing-resources && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT testing-resources/CMakeFiles/testing-resources.dir/source/MemoryTesting.cpp.o -MF CMakeFiles/testing-resources.dir/source/MemoryTesting.cpp.o.d -o CMakeFiles/testing-resources.dir/source/MemoryTesting.cpp.o -c /home/ubuntu/sdk/aws-sdk-cpp/testing-resources/source/MemoryTesting.cpp

testing-resources/CMakeFiles/testing-resources.dir/source/MemoryTesting.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testing-resources.dir/source/MemoryTesting.cpp.i"
	cd /home/ubuntu/sdk/sdk_build/testing-resources && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/sdk/aws-sdk-cpp/testing-resources/source/MemoryTesting.cpp > CMakeFiles/testing-resources.dir/source/MemoryTesting.cpp.i

testing-resources/CMakeFiles/testing-resources.dir/source/MemoryTesting.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testing-resources.dir/source/MemoryTesting.cpp.s"
	cd /home/ubuntu/sdk/sdk_build/testing-resources && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/sdk/aws-sdk-cpp/testing-resources/source/MemoryTesting.cpp -o CMakeFiles/testing-resources.dir/source/MemoryTesting.cpp.s

testing-resources/CMakeFiles/testing-resources.dir/source/TestingEnvironment.cpp.o: testing-resources/CMakeFiles/testing-resources.dir/flags.make
testing-resources/CMakeFiles/testing-resources.dir/source/TestingEnvironment.cpp.o: testing-resources/CMakeFiles/testing-resources.dir/includes_CXX.rsp
testing-resources/CMakeFiles/testing-resources.dir/source/TestingEnvironment.cpp.o: /home/ubuntu/sdk/aws-sdk-cpp/testing-resources/source/TestingEnvironment.cpp
testing-resources/CMakeFiles/testing-resources.dir/source/TestingEnvironment.cpp.o: testing-resources/CMakeFiles/testing-resources.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object testing-resources/CMakeFiles/testing-resources.dir/source/TestingEnvironment.cpp.o"
	cd /home/ubuntu/sdk/sdk_build/testing-resources && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT testing-resources/CMakeFiles/testing-resources.dir/source/TestingEnvironment.cpp.o -MF CMakeFiles/testing-resources.dir/source/TestingEnvironment.cpp.o.d -o CMakeFiles/testing-resources.dir/source/TestingEnvironment.cpp.o -c /home/ubuntu/sdk/aws-sdk-cpp/testing-resources/source/TestingEnvironment.cpp

testing-resources/CMakeFiles/testing-resources.dir/source/TestingEnvironment.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testing-resources.dir/source/TestingEnvironment.cpp.i"
	cd /home/ubuntu/sdk/sdk_build/testing-resources && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/sdk/aws-sdk-cpp/testing-resources/source/TestingEnvironment.cpp > CMakeFiles/testing-resources.dir/source/TestingEnvironment.cpp.i

testing-resources/CMakeFiles/testing-resources.dir/source/TestingEnvironment.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testing-resources.dir/source/TestingEnvironment.cpp.s"
	cd /home/ubuntu/sdk/sdk_build/testing-resources && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/sdk/aws-sdk-cpp/testing-resources/source/TestingEnvironment.cpp -o CMakeFiles/testing-resources.dir/source/TestingEnvironment.cpp.s

testing-resources/CMakeFiles/testing-resources.dir/source/external/gtest/gtest-all.cc.o: testing-resources/CMakeFiles/testing-resources.dir/flags.make
testing-resources/CMakeFiles/testing-resources.dir/source/external/gtest/gtest-all.cc.o: testing-resources/CMakeFiles/testing-resources.dir/includes_CXX.rsp
testing-resources/CMakeFiles/testing-resources.dir/source/external/gtest/gtest-all.cc.o: /home/ubuntu/sdk/aws-sdk-cpp/testing-resources/source/external/gtest/gtest-all.cc
testing-resources/CMakeFiles/testing-resources.dir/source/external/gtest/gtest-all.cc.o: testing-resources/CMakeFiles/testing-resources.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object testing-resources/CMakeFiles/testing-resources.dir/source/external/gtest/gtest-all.cc.o"
	cd /home/ubuntu/sdk/sdk_build/testing-resources && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT testing-resources/CMakeFiles/testing-resources.dir/source/external/gtest/gtest-all.cc.o -MF CMakeFiles/testing-resources.dir/source/external/gtest/gtest-all.cc.o.d -o CMakeFiles/testing-resources.dir/source/external/gtest/gtest-all.cc.o -c /home/ubuntu/sdk/aws-sdk-cpp/testing-resources/source/external/gtest/gtest-all.cc

testing-resources/CMakeFiles/testing-resources.dir/source/external/gtest/gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testing-resources.dir/source/external/gtest/gtest-all.cc.i"
	cd /home/ubuntu/sdk/sdk_build/testing-resources && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/sdk/aws-sdk-cpp/testing-resources/source/external/gtest/gtest-all.cc > CMakeFiles/testing-resources.dir/source/external/gtest/gtest-all.cc.i

testing-resources/CMakeFiles/testing-resources.dir/source/external/gtest/gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testing-resources.dir/source/external/gtest/gtest-all.cc.s"
	cd /home/ubuntu/sdk/sdk_build/testing-resources && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/sdk/aws-sdk-cpp/testing-resources/source/external/gtest/gtest-all.cc -o CMakeFiles/testing-resources.dir/source/external/gtest/gtest-all.cc.s

testing-resources/CMakeFiles/testing-resources.dir/source/platform/linux-shared/PlatformTesting.cpp.o: testing-resources/CMakeFiles/testing-resources.dir/flags.make
testing-resources/CMakeFiles/testing-resources.dir/source/platform/linux-shared/PlatformTesting.cpp.o: testing-resources/CMakeFiles/testing-resources.dir/includes_CXX.rsp
testing-resources/CMakeFiles/testing-resources.dir/source/platform/linux-shared/PlatformTesting.cpp.o: /home/ubuntu/sdk/aws-sdk-cpp/testing-resources/source/platform/linux-shared/PlatformTesting.cpp
testing-resources/CMakeFiles/testing-resources.dir/source/platform/linux-shared/PlatformTesting.cpp.o: testing-resources/CMakeFiles/testing-resources.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object testing-resources/CMakeFiles/testing-resources.dir/source/platform/linux-shared/PlatformTesting.cpp.o"
	cd /home/ubuntu/sdk/sdk_build/testing-resources && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT testing-resources/CMakeFiles/testing-resources.dir/source/platform/linux-shared/PlatformTesting.cpp.o -MF CMakeFiles/testing-resources.dir/source/platform/linux-shared/PlatformTesting.cpp.o.d -o CMakeFiles/testing-resources.dir/source/platform/linux-shared/PlatformTesting.cpp.o -c /home/ubuntu/sdk/aws-sdk-cpp/testing-resources/source/platform/linux-shared/PlatformTesting.cpp

testing-resources/CMakeFiles/testing-resources.dir/source/platform/linux-shared/PlatformTesting.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testing-resources.dir/source/platform/linux-shared/PlatformTesting.cpp.i"
	cd /home/ubuntu/sdk/sdk_build/testing-resources && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/sdk/aws-sdk-cpp/testing-resources/source/platform/linux-shared/PlatformTesting.cpp > CMakeFiles/testing-resources.dir/source/platform/linux-shared/PlatformTesting.cpp.i

testing-resources/CMakeFiles/testing-resources.dir/source/platform/linux-shared/PlatformTesting.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testing-resources.dir/source/platform/linux-shared/PlatformTesting.cpp.s"
	cd /home/ubuntu/sdk/sdk_build/testing-resources && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/sdk/aws-sdk-cpp/testing-resources/source/platform/linux-shared/PlatformTesting.cpp -o CMakeFiles/testing-resources.dir/source/platform/linux-shared/PlatformTesting.cpp.s

# Object files for target testing-resources
testing__resources_OBJECTS = \
"CMakeFiles/testing-resources.dir/source/MemoryTesting.cpp.o" \
"CMakeFiles/testing-resources.dir/source/TestingEnvironment.cpp.o" \
"CMakeFiles/testing-resources.dir/source/external/gtest/gtest-all.cc.o" \
"CMakeFiles/testing-resources.dir/source/platform/linux-shared/PlatformTesting.cpp.o"

# External object files for target testing-resources
testing__resources_EXTERNAL_OBJECTS =

testing-resources/libtesting-resources.so: testing-resources/CMakeFiles/testing-resources.dir/source/MemoryTesting.cpp.o
testing-resources/libtesting-resources.so: testing-resources/CMakeFiles/testing-resources.dir/source/TestingEnvironment.cpp.o
testing-resources/libtesting-resources.so: testing-resources/CMakeFiles/testing-resources.dir/source/external/gtest/gtest-all.cc.o
testing-resources/libtesting-resources.so: testing-resources/CMakeFiles/testing-resources.dir/source/platform/linux-shared/PlatformTesting.cpp.o
testing-resources/libtesting-resources.so: testing-resources/CMakeFiles/testing-resources.dir/build.make
testing-resources/libtesting-resources.so: aws-cpp-sdk-core/libaws-cpp-sdk-core.so
testing-resources/libtesting-resources.so: crt/aws-crt-cpp/libaws-crt-cpp.a
testing-resources/libtesting-resources.so: crt/aws-crt-cpp/crt/aws-c-mqtt/libaws-c-mqtt.a
testing-resources/libtesting-resources.so: lib/libaws-c-event-stream.a
testing-resources/libtesting-resources.so: crt/aws-crt-cpp/crt/aws-c-s3/libaws-c-s3.a
testing-resources/libtesting-resources.so: crt/aws-crt-cpp/crt/aws-c-auth/libaws-c-auth.a
testing-resources/libtesting-resources.so: crt/aws-crt-cpp/crt/aws-c-http/libaws-c-http.a
testing-resources/libtesting-resources.so: crt/aws-crt-cpp/crt/aws-c-io/libaws-c-io.a
testing-resources/libtesting-resources.so: lib/libs2n.a
testing-resources/libtesting-resources.so: /usr/lib/x86_64-linux-gnu/libcrypto.so
testing-resources/libtesting-resources.so: crt/aws-crt-cpp/crt/aws-c-compression/libaws-c-compression.a
testing-resources/libtesting-resources.so: crt/aws-crt-cpp/crt/aws-c-cal/libaws-c-cal.a
testing-resources/libtesting-resources.so: /usr/lib/x86_64-linux-gnu/libcrypto.so
testing-resources/libtesting-resources.so: crt/aws-crt-cpp/crt/aws-c-sdkutils/libaws-c-sdkutils.a
testing-resources/libtesting-resources.so: crt/aws-crt-cpp/crt/aws-checksums/libaws-checksums.a
testing-resources/libtesting-resources.so: crt/aws-crt-cpp/crt/aws-c-common/libaws-c-common.a
testing-resources/libtesting-resources.so: testing-resources/CMakeFiles/testing-resources.dir/objects1.rsp
testing-resources/libtesting-resources.so: testing-resources/CMakeFiles/testing-resources.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library libtesting-resources.so"
	cd /home/ubuntu/sdk/sdk_build/testing-resources && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testing-resources.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
testing-resources/CMakeFiles/testing-resources.dir/build: testing-resources/libtesting-resources.so
.PHONY : testing-resources/CMakeFiles/testing-resources.dir/build

testing-resources/CMakeFiles/testing-resources.dir/clean:
	cd /home/ubuntu/sdk/sdk_build/testing-resources && $(CMAKE_COMMAND) -P CMakeFiles/testing-resources.dir/cmake_clean.cmake
.PHONY : testing-resources/CMakeFiles/testing-resources.dir/clean

testing-resources/CMakeFiles/testing-resources.dir/depend:
	cd /home/ubuntu/sdk/sdk_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/sdk/aws-sdk-cpp /home/ubuntu/sdk/aws-sdk-cpp/testing-resources /home/ubuntu/sdk/sdk_build /home/ubuntu/sdk/sdk_build/testing-resources /home/ubuntu/sdk/sdk_build/testing-resources/CMakeFiles/testing-resources.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : testing-resources/CMakeFiles/testing-resources.dir/depend

