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
include crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/compiler_depend.make

# Include the progress variables for this target.
include crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/progress.make

# Include the compile flags for this target's objects.
include crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/flags.make

crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/aws_profile.c.o: crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/flags.make
crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/aws_profile.c.o: /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-sdkutils/source/aws_profile.c
crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/aws_profile.c.o: crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/aws_profile.c.o"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-sdkutils && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/aws_profile.c.o -MF CMakeFiles/aws-c-sdkutils.dir/source/aws_profile.c.o.d -o CMakeFiles/aws-c-sdkutils.dir/source/aws_profile.c.o -c /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-sdkutils/source/aws_profile.c

crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/aws_profile.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aws-c-sdkutils.dir/source/aws_profile.c.i"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-sdkutils && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-sdkutils/source/aws_profile.c > CMakeFiles/aws-c-sdkutils.dir/source/aws_profile.c.i

crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/aws_profile.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aws-c-sdkutils.dir/source/aws_profile.c.s"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-sdkutils && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-sdkutils/source/aws_profile.c -o CMakeFiles/aws-c-sdkutils.dir/source/aws_profile.c.s

crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/resource_name.c.o: crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/flags.make
crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/resource_name.c.o: /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-sdkutils/source/resource_name.c
crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/resource_name.c.o: crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/resource_name.c.o"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-sdkutils && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/resource_name.c.o -MF CMakeFiles/aws-c-sdkutils.dir/source/resource_name.c.o.d -o CMakeFiles/aws-c-sdkutils.dir/source/resource_name.c.o -c /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-sdkutils/source/resource_name.c

crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/resource_name.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aws-c-sdkutils.dir/source/resource_name.c.i"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-sdkutils && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-sdkutils/source/resource_name.c > CMakeFiles/aws-c-sdkutils.dir/source/resource_name.c.i

crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/resource_name.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aws-c-sdkutils.dir/source/resource_name.c.s"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-sdkutils && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-sdkutils/source/resource_name.c -o CMakeFiles/aws-c-sdkutils.dir/source/resource_name.c.s

crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/sdkutils.c.o: crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/flags.make
crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/sdkutils.c.o: /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-sdkutils/source/sdkutils.c
crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/sdkutils.c.o: crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/sdkutils.c.o"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-sdkutils && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/sdkutils.c.o -MF CMakeFiles/aws-c-sdkutils.dir/source/sdkutils.c.o.d -o CMakeFiles/aws-c-sdkutils.dir/source/sdkutils.c.o -c /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-sdkutils/source/sdkutils.c

crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/sdkutils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aws-c-sdkutils.dir/source/sdkutils.c.i"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-sdkutils && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-sdkutils/source/sdkutils.c > CMakeFiles/aws-c-sdkutils.dir/source/sdkutils.c.i

crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/sdkutils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aws-c-sdkutils.dir/source/sdkutils.c.s"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-sdkutils && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-sdkutils/source/sdkutils.c -o CMakeFiles/aws-c-sdkutils.dir/source/sdkutils.c.s

# Object files for target aws-c-sdkutils
aws__c__sdkutils_OBJECTS = \
"CMakeFiles/aws-c-sdkutils.dir/source/aws_profile.c.o" \
"CMakeFiles/aws-c-sdkutils.dir/source/resource_name.c.o" \
"CMakeFiles/aws-c-sdkutils.dir/source/sdkutils.c.o"

# External object files for target aws-c-sdkutils
aws__c__sdkutils_EXTERNAL_OBJECTS =

crt/aws-crt-cpp/crt/aws-c-sdkutils/libaws-c-sdkutils.a: crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/aws_profile.c.o
crt/aws-crt-cpp/crt/aws-c-sdkutils/libaws-c-sdkutils.a: crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/resource_name.c.o
crt/aws-crt-cpp/crt/aws-c-sdkutils/libaws-c-sdkutils.a: crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/source/sdkutils.c.o
crt/aws-crt-cpp/crt/aws-c-sdkutils/libaws-c-sdkutils.a: crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/build.make
crt/aws-crt-cpp/crt/aws-c-sdkutils/libaws-c-sdkutils.a: crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libaws-c-sdkutils.a"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-sdkutils && $(CMAKE_COMMAND) -P CMakeFiles/aws-c-sdkutils.dir/cmake_clean_target.cmake
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-sdkutils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aws-c-sdkutils.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/build: crt/aws-crt-cpp/crt/aws-c-sdkutils/libaws-c-sdkutils.a
.PHONY : crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/build

crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/clean:
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-sdkutils && $(CMAKE_COMMAND) -P CMakeFiles/aws-c-sdkutils.dir/cmake_clean.cmake
.PHONY : crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/clean

crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/depend:
	cd /home/ubuntu/sdk/sdk_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/sdk/aws-sdk-cpp /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-sdkutils /home/ubuntu/sdk/sdk_build /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-sdkutils /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : crt/aws-crt-cpp/crt/aws-c-sdkutils/CMakeFiles/aws-c-sdkutils.dir/depend

