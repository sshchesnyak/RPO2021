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
include programs/fuzz/CMakeFiles/fuzz_privkey.dir/depend.make

# Include the progress variables for this target.
include programs/fuzz/CMakeFiles/fuzz_privkey.dir/progress.make

# Include the compile flags for this target's objects.
include programs/fuzz/CMakeFiles/fuzz_privkey.dir/flags.make

programs/fuzz/CMakeFiles/fuzz_privkey.dir/fuzz_privkey.c.o: programs/fuzz/CMakeFiles/fuzz_privkey.dir/flags.make
programs/fuzz/CMakeFiles/fuzz_privkey.dir/fuzz_privkey.c.o: /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/programs/fuzz/fuzz_privkey.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object programs/fuzz/CMakeFiles/fuzz_privkey.dir/fuzz_privkey.c.o"
	cd /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/programs/fuzz && /home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/fuzz_privkey.dir/fuzz_privkey.c.o -c /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/programs/fuzz/fuzz_privkey.c

programs/fuzz/CMakeFiles/fuzz_privkey.dir/fuzz_privkey.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fuzz_privkey.dir/fuzz_privkey.c.i"
	cd /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/programs/fuzz && /home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/programs/fuzz/fuzz_privkey.c > CMakeFiles/fuzz_privkey.dir/fuzz_privkey.c.i

programs/fuzz/CMakeFiles/fuzz_privkey.dir/fuzz_privkey.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fuzz_privkey.dir/fuzz_privkey.c.s"
	cd /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/programs/fuzz && /home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/programs/fuzz/fuzz_privkey.c -o CMakeFiles/fuzz_privkey.dir/fuzz_privkey.c.s

programs/fuzz/CMakeFiles/fuzz_privkey.dir/onefile.c.o: programs/fuzz/CMakeFiles/fuzz_privkey.dir/flags.make
programs/fuzz/CMakeFiles/fuzz_privkey.dir/onefile.c.o: /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/programs/fuzz/onefile.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object programs/fuzz/CMakeFiles/fuzz_privkey.dir/onefile.c.o"
	cd /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/programs/fuzz && /home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/fuzz_privkey.dir/onefile.c.o -c /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/programs/fuzz/onefile.c

programs/fuzz/CMakeFiles/fuzz_privkey.dir/onefile.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fuzz_privkey.dir/onefile.c.i"
	cd /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/programs/fuzz && /home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/programs/fuzz/onefile.c > CMakeFiles/fuzz_privkey.dir/onefile.c.i

programs/fuzz/CMakeFiles/fuzz_privkey.dir/onefile.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fuzz_privkey.dir/onefile.c.s"
	cd /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/programs/fuzz && /home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/programs/fuzz/onefile.c -o CMakeFiles/fuzz_privkey.dir/onefile.c.s

# Object files for target fuzz_privkey
fuzz_privkey_OBJECTS = \
"CMakeFiles/fuzz_privkey.dir/fuzz_privkey.c.o" \
"CMakeFiles/fuzz_privkey.dir/onefile.c.o"

# External object files for target fuzz_privkey
fuzz_privkey_EXTERNAL_OBJECTS = \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/random.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o"

programs/fuzz/fuzz_privkey: programs/fuzz/CMakeFiles/fuzz_privkey.dir/fuzz_privkey.c.o
programs/fuzz/fuzz_privkey: programs/fuzz/CMakeFiles/fuzz_privkey.dir/onefile.c.o
programs/fuzz/fuzz_privkey: CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o
programs/fuzz/fuzz_privkey: CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.o
programs/fuzz/fuzz_privkey: CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.o
programs/fuzz/fuzz_privkey: CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.o
programs/fuzz/fuzz_privkey: CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.o
programs/fuzz/fuzz_privkey: CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o
programs/fuzz/fuzz_privkey: CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o
programs/fuzz/fuzz_privkey: CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o
programs/fuzz/fuzz_privkey: CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o
programs/fuzz/fuzz_privkey: CMakeFiles/mbedtls_test.dir/tests/src/random.c.o
programs/fuzz/fuzz_privkey: CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o
programs/fuzz/fuzz_privkey: programs/fuzz/CMakeFiles/fuzz_privkey.dir/build.make
programs/fuzz/fuzz_privkey: library/libmbedtls.so
programs/fuzz/fuzz_privkey: library/libmbedx509.so
programs/fuzz/fuzz_privkey: library/libmbedcrypto.so
programs/fuzz/fuzz_privkey: programs/fuzz/CMakeFiles/fuzz_privkey.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable fuzz_privkey"
	cd /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/programs/fuzz && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fuzz_privkey.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/fuzz/CMakeFiles/fuzz_privkey.dir/build: programs/fuzz/fuzz_privkey

.PHONY : programs/fuzz/CMakeFiles/fuzz_privkey.dir/build

programs/fuzz/CMakeFiles/fuzz_privkey.dir/clean:
	cd /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/programs/fuzz && $(CMAKE_COMMAND) -P CMakeFiles/fuzz_privkey.dir/cmake_clean.cmake
.PHONY : programs/fuzz/CMakeFiles/fuzz_privkey.dir/clean

programs/fuzz/CMakeFiles/fuzz_privkey.dir/depend:
	cd /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/programs/fuzz /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64 /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/programs/fuzz /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build-64/x86_64/programs/fuzz/CMakeFiles/fuzz_privkey.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/fuzz/CMakeFiles/fuzz_privkey.dir/depend

