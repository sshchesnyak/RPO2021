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
CMAKE_BINARY_DIR = /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86

# Include any dependencies generated for this target.
include programs/psa/CMakeFiles/crypto_examples.dir/depend.make

# Include the progress variables for this target.
include programs/psa/CMakeFiles/crypto_examples.dir/progress.make

# Include the compile flags for this target's objects.
include programs/psa/CMakeFiles/crypto_examples.dir/flags.make

programs/psa/CMakeFiles/crypto_examples.dir/crypto_examples.c.o: programs/psa/CMakeFiles/crypto_examples.dir/flags.make
programs/psa/CMakeFiles/crypto_examples.dir/crypto_examples.c.o: /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/programs/psa/crypto_examples.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object programs/psa/CMakeFiles/crypto_examples.dir/crypto_examples.c.o"
	cd /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/programs/psa && /home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=i686-none-linux-android16 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/crypto_examples.dir/crypto_examples.c.o -c /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/programs/psa/crypto_examples.c

programs/psa/CMakeFiles/crypto_examples.dir/crypto_examples.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/crypto_examples.dir/crypto_examples.c.i"
	cd /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/programs/psa && /home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=i686-none-linux-android16 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/programs/psa/crypto_examples.c > CMakeFiles/crypto_examples.dir/crypto_examples.c.i

programs/psa/CMakeFiles/crypto_examples.dir/crypto_examples.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/crypto_examples.dir/crypto_examples.c.s"
	cd /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/programs/psa && /home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=i686-none-linux-android16 --gcc-toolchain=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/sshchesnyak/Android/Sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/programs/psa/crypto_examples.c -o CMakeFiles/crypto_examples.dir/crypto_examples.c.s

# Object files for target crypto_examples
crypto_examples_OBJECTS = \
"CMakeFiles/crypto_examples.dir/crypto_examples.c.o"

# External object files for target crypto_examples
crypto_examples_EXTERNAL_OBJECTS = \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/random.c.o" \
"/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o"

programs/psa/crypto_examples: programs/psa/CMakeFiles/crypto_examples.dir/crypto_examples.c.o
programs/psa/crypto_examples: CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o
programs/psa/crypto_examples: CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.o
programs/psa/crypto_examples: CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.o
programs/psa/crypto_examples: CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.o
programs/psa/crypto_examples: CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.o
programs/psa/crypto_examples: CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o
programs/psa/crypto_examples: CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o
programs/psa/crypto_examples: CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o
programs/psa/crypto_examples: CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o
programs/psa/crypto_examples: CMakeFiles/mbedtls_test.dir/tests/src/random.c.o
programs/psa/crypto_examples: CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o
programs/psa/crypto_examples: programs/psa/CMakeFiles/crypto_examples.dir/build.make
programs/psa/crypto_examples: library/libmbedcrypto.so
programs/psa/crypto_examples: programs/psa/CMakeFiles/crypto_examples.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable crypto_examples"
	cd /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/programs/psa && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/crypto_examples.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/psa/CMakeFiles/crypto_examples.dir/build: programs/psa/crypto_examples

.PHONY : programs/psa/CMakeFiles/crypto_examples.dir/build

programs/psa/CMakeFiles/crypto_examples.dir/clean:
	cd /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/programs/psa && $(CMAKE_COMMAND) -P CMakeFiles/crypto_examples.dir/cmake_clean.cmake
.PHONY : programs/psa/CMakeFiles/crypto_examples.dir/clean

programs/psa/CMakeFiles/crypto_examples.dir/depend:
	cd /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/mbedtls/programs/psa /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86 /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/programs/psa /home/sshchesnyak/Documents/Android-projects/libs/mbedtls/build/x86/programs/psa/CMakeFiles/crypto_examples.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/psa/CMakeFiles/crypto_examples.dir/depend

