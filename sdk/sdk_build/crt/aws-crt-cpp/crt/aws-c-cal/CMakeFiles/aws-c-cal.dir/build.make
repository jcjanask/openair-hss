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
include crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/compiler_depend.make

# Include the progress variables for this target.
include crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/progress.make

# Include the compile flags for this target's objects.
include crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/flags.make

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/cal.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/flags.make
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/cal.c.o: /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/cal.c
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/cal.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/cal.c.o"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/cal.c.o -MF CMakeFiles/aws-c-cal.dir/source/cal.c.o.d -o CMakeFiles/aws-c-cal.dir/source/cal.c.o -c /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/cal.c

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/cal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aws-c-cal.dir/source/cal.c.i"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/cal.c > CMakeFiles/aws-c-cal.dir/source/cal.c.i

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/cal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aws-c-cal.dir/source/cal.c.s"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/cal.c -o CMakeFiles/aws-c-cal.dir/source/cal.c.s

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/der.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/flags.make
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/der.c.o: /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/der.c
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/der.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/der.c.o"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/der.c.o -MF CMakeFiles/aws-c-cal.dir/source/der.c.o.d -o CMakeFiles/aws-c-cal.dir/source/der.c.o -c /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/der.c

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/der.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aws-c-cal.dir/source/der.c.i"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/der.c > CMakeFiles/aws-c-cal.dir/source/der.c.i

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/der.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aws-c-cal.dir/source/der.c.s"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/der.c -o CMakeFiles/aws-c-cal.dir/source/der.c.s

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/ecc.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/flags.make
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/ecc.c.o: /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/ecc.c
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/ecc.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/ecc.c.o"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/ecc.c.o -MF CMakeFiles/aws-c-cal.dir/source/ecc.c.o.d -o CMakeFiles/aws-c-cal.dir/source/ecc.c.o -c /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/ecc.c

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/ecc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aws-c-cal.dir/source/ecc.c.i"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/ecc.c > CMakeFiles/aws-c-cal.dir/source/ecc.c.i

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/ecc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aws-c-cal.dir/source/ecc.c.s"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/ecc.c -o CMakeFiles/aws-c-cal.dir/source/ecc.c.s

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/hash.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/flags.make
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/hash.c.o: /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/hash.c
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/hash.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/hash.c.o"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/hash.c.o -MF CMakeFiles/aws-c-cal.dir/source/hash.c.o.d -o CMakeFiles/aws-c-cal.dir/source/hash.c.o -c /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/hash.c

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/hash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aws-c-cal.dir/source/hash.c.i"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/hash.c > CMakeFiles/aws-c-cal.dir/source/hash.c.i

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/hash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aws-c-cal.dir/source/hash.c.s"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/hash.c -o CMakeFiles/aws-c-cal.dir/source/hash.c.s

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/hmac.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/flags.make
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/hmac.c.o: /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/hmac.c
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/hmac.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/hmac.c.o"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/hmac.c.o -MF CMakeFiles/aws-c-cal.dir/source/hmac.c.o.d -o CMakeFiles/aws-c-cal.dir/source/hmac.c.o -c /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/hmac.c

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/hmac.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aws-c-cal.dir/source/hmac.c.i"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/hmac.c > CMakeFiles/aws-c-cal.dir/source/hmac.c.i

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/hmac.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aws-c-cal.dir/source/hmac.c.s"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/hmac.c -o CMakeFiles/aws-c-cal.dir/source/hmac.c.s

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/openssl_platform_init.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/flags.make
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/openssl_platform_init.c.o: /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/unix/openssl_platform_init.c
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/openssl_platform_init.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/openssl_platform_init.c.o"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/openssl_platform_init.c.o -MF CMakeFiles/aws-c-cal.dir/source/unix/openssl_platform_init.c.o.d -o CMakeFiles/aws-c-cal.dir/source/unix/openssl_platform_init.c.o -c /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/unix/openssl_platform_init.c

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/openssl_platform_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aws-c-cal.dir/source/unix/openssl_platform_init.c.i"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/unix/openssl_platform_init.c > CMakeFiles/aws-c-cal.dir/source/unix/openssl_platform_init.c.i

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/openssl_platform_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aws-c-cal.dir/source/unix/openssl_platform_init.c.s"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/unix/openssl_platform_init.c -o CMakeFiles/aws-c-cal.dir/source/unix/openssl_platform_init.c.s

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_ecc.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/flags.make
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_ecc.c.o: /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/unix/opensslcrypto_ecc.c
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_ecc.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_ecc.c.o"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_ecc.c.o -MF CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_ecc.c.o.d -o CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_ecc.c.o -c /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/unix/opensslcrypto_ecc.c

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_ecc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_ecc.c.i"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/unix/opensslcrypto_ecc.c > CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_ecc.c.i

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_ecc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_ecc.c.s"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/unix/opensslcrypto_ecc.c -o CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_ecc.c.s

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hash.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/flags.make
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hash.c.o: /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/unix/opensslcrypto_hash.c
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hash.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hash.c.o"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hash.c.o -MF CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hash.c.o.d -o CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hash.c.o -c /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/unix/opensslcrypto_hash.c

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hash.c.i"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/unix/opensslcrypto_hash.c > CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hash.c.i

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hash.c.s"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/unix/opensslcrypto_hash.c -o CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hash.c.s

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hmac.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/flags.make
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hmac.c.o: /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/unix/opensslcrypto_hmac.c
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hmac.c.o: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hmac.c.o"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hmac.c.o -MF CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hmac.c.o.d -o CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hmac.c.o -c /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/unix/opensslcrypto_hmac.c

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hmac.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hmac.c.i"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/unix/opensslcrypto_hmac.c > CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hmac.c.i

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hmac.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hmac.c.s"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/source/unix/opensslcrypto_hmac.c -o CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hmac.c.s

# Object files for target aws-c-cal
aws__c__cal_OBJECTS = \
"CMakeFiles/aws-c-cal.dir/source/cal.c.o" \
"CMakeFiles/aws-c-cal.dir/source/der.c.o" \
"CMakeFiles/aws-c-cal.dir/source/ecc.c.o" \
"CMakeFiles/aws-c-cal.dir/source/hash.c.o" \
"CMakeFiles/aws-c-cal.dir/source/hmac.c.o" \
"CMakeFiles/aws-c-cal.dir/source/unix/openssl_platform_init.c.o" \
"CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_ecc.c.o" \
"CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hash.c.o" \
"CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hmac.c.o"

# External object files for target aws-c-cal
aws__c__cal_EXTERNAL_OBJECTS =

crt/aws-crt-cpp/crt/aws-c-cal/libaws-c-cal.a: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/cal.c.o
crt/aws-crt-cpp/crt/aws-c-cal/libaws-c-cal.a: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/der.c.o
crt/aws-crt-cpp/crt/aws-c-cal/libaws-c-cal.a: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/ecc.c.o
crt/aws-crt-cpp/crt/aws-c-cal/libaws-c-cal.a: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/hash.c.o
crt/aws-crt-cpp/crt/aws-c-cal/libaws-c-cal.a: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/hmac.c.o
crt/aws-crt-cpp/crt/aws-c-cal/libaws-c-cal.a: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/openssl_platform_init.c.o
crt/aws-crt-cpp/crt/aws-c-cal/libaws-c-cal.a: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_ecc.c.o
crt/aws-crt-cpp/crt/aws-c-cal/libaws-c-cal.a: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hash.c.o
crt/aws-crt-cpp/crt/aws-c-cal/libaws-c-cal.a: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/source/unix/opensslcrypto_hmac.c.o
crt/aws-crt-cpp/crt/aws-c-cal/libaws-c-cal.a: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/build.make
crt/aws-crt-cpp/crt/aws-c-cal/libaws-c-cal.a: crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/sdk/sdk_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking C static library libaws-c-cal.a"
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && $(CMAKE_COMMAND) -P CMakeFiles/aws-c-cal.dir/cmake_clean_target.cmake
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aws-c-cal.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/build: crt/aws-crt-cpp/crt/aws-c-cal/libaws-c-cal.a
.PHONY : crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/build

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/clean:
	cd /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal && $(CMAKE_COMMAND) -P CMakeFiles/aws-c-cal.dir/cmake_clean.cmake
.PHONY : crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/clean

crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/depend:
	cd /home/ubuntu/sdk/sdk_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/sdk/aws-sdk-cpp /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal /home/ubuntu/sdk/sdk_build /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal /home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/aws-c-cal.dir/depend

