# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /home/sshchesnyak/Android/Sdk/cmake/3.18.1/bin/cmake

# The command to remove a file.
RM = /home/sshchesnyak/Android/Sdk/cmake/3.18.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64

# Include any dependencies generated for this target.
include CMakeFiles/mbedtls_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mbedtls_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mbedtls_test.dir/flags.make

CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o: CMakeFiles/mbedtls_test.dir/flags.make
CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o: /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/asn1_helpers.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o -c /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/asn1_helpers.c

CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.i"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/asn1_helpers.c > CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.i

CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.s"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/asn1_helpers.c -o CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.s

CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.o: CMakeFiles/mbedtls_test.dir/flags.make
CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.o: /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/drivers/cipher.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.o"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.o -c /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/drivers/cipher.c

CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.i"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/drivers/cipher.c > CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.i

CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.s"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/drivers/cipher.c -o CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.s

CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.o: CMakeFiles/mbedtls_test.dir/flags.make
CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.o: /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/drivers/key_management.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.o"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.o -c /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/drivers/key_management.c

CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.i"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/drivers/key_management.c > CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.i

CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.s"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/drivers/key_management.c -o CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.s

CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.o: CMakeFiles/mbedtls_test.dir/flags.make
CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.o: /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/drivers/signature.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.o"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.o -c /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/drivers/signature.c

CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.i"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/drivers/signature.c > CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.i

CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.s"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/drivers/signature.c -o CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.s

CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.o: CMakeFiles/mbedtls_test.dir/flags.make
CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.o: /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/drivers/size.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.o"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.o -c /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/drivers/size.c

CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.i"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/drivers/size.c > CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.i

CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.s"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/drivers/size.c -o CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.s

CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o: CMakeFiles/mbedtls_test.dir/flags.make
CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o: /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/fake_external_rng_for_test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o -c /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/fake_external_rng_for_test.c

CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.i"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/fake_external_rng_for_test.c > CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.i

CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.s"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/fake_external_rng_for_test.c -o CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.s

CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o: CMakeFiles/mbedtls_test.dir/flags.make
CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o: /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/helpers.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o -c /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/helpers.c

CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.i"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/helpers.c > CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.i

CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.s"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/helpers.c -o CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.s

CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o: CMakeFiles/mbedtls_test.dir/flags.make
CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o: /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/psa_crypto_helpers.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o -c /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/psa_crypto_helpers.c

CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.i"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/psa_crypto_helpers.c > CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.i

CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.s"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/psa_crypto_helpers.c -o CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.s

CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o: CMakeFiles/mbedtls_test.dir/flags.make
CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o: /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/psa_exercise_key.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o -c /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/psa_exercise_key.c

CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.i"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/psa_exercise_key.c > CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.i

CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.s"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/psa_exercise_key.c -o CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.s

CMakeFiles/mbedtls_test.dir/tests/src/random.c.o: CMakeFiles/mbedtls_test.dir/flags.make
CMakeFiles/mbedtls_test.dir/tests/src/random.c.o: /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/random.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/mbedtls_test.dir/tests/src/random.c.o"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mbedtls_test.dir/tests/src/random.c.o -c /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/random.c

CMakeFiles/mbedtls_test.dir/tests/src/random.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mbedtls_test.dir/tests/src/random.c.i"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/random.c > CMakeFiles/mbedtls_test.dir/tests/src/random.c.i

CMakeFiles/mbedtls_test.dir/tests/src/random.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mbedtls_test.dir/tests/src/random.c.s"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/random.c -o CMakeFiles/mbedtls_test.dir/tests/src/random.c.s

CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o: CMakeFiles/mbedtls_test.dir/flags.make
CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o: /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/threading_helpers.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o -c /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/threading_helpers.c

CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.i"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/threading_helpers.c > CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.i

CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.s"
	/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/tests/src/threading_helpers.c -o CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.s

mbedtls_test: CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o
mbedtls_test: CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.o
mbedtls_test: CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.o
mbedtls_test: CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.o
mbedtls_test: CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.o
mbedtls_test: CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o
mbedtls_test: CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o
mbedtls_test: CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o
mbedtls_test: CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o
mbedtls_test: CMakeFiles/mbedtls_test.dir/tests/src/random.c.o
mbedtls_test: CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o
mbedtls_test: CMakeFiles/mbedtls_test.dir/build.make

.PHONY : mbedtls_test

# Rule to build all files generated by this target.
CMakeFiles/mbedtls_test.dir/build: mbedtls_test

.PHONY : CMakeFiles/mbedtls_test.dir/build

CMakeFiles/mbedtls_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mbedtls_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mbedtls_test.dir/clean

CMakeFiles/mbedtls_test.dir/depend:
	cd /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64 /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64 /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles/mbedtls_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mbedtls_test.dir/depend

