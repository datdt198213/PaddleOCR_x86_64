root_path="/home/anlab/x86_64/PaddleOCR/deploy/cpp_infer/opencv-3.4.7"
install_path=${root_path}/test_opencv3
build_dir=${root_path}/build

rm -rf ${build_dir}
mkdir ${build_dir}
cd ${build_dir}

cmake .. \
    -DCMAKE_INSTALL_PREFIX=${install_path} \
    -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_SHARED_LIBS=OFF \
    -DWITH_IPP=OFF \
    -DBUILD_IPP_IW=OFF \
    -DWITH_LAPACK=OFF \
    -DWITH_EIGEN=OFF \
    -DCMAKE_INSTALL_LIBDIR=lib64 \
    -DWITH_ZLIB=ON \
    -DBUILD_ZLIB=ON \
    -DWITH_JPEG=ON \
    -DBUILD_JPEG=ON \
    -DWITH_PNG=ON \
    -DBUILD_PNG=ON \
    -DWITH_TIFF=ON \
    -DBUILD_TIFF=ON

make -j
make install


# cmake_minimum_required(VERSION 3.5)
# set(CMAKE_SYSTEM_NAME Linux)
# set(CMAKE_SYSTEM_PROCESSOR aarch64)

# set(target_arch aarch64-linux-gnu)
# set(CMAKE_LIBRARY_ARCHITECTURE ${target_arch} CACHE STRING "" FORCE)

# # specify the toolchain programs
# find_program(CMAKE_C_COMPILER ${target_arch}-gcc)
# find_program(CMAKE_CXX_COMPILER ${target_arch}-g++ NO_CACHE )
# if(NOT CMAKE_C_COMPILER OR NOT CMAKE_CXX_COMPILER)
#     message(FATAL_ERROR "Can't find suitable C/C++ cross compiler for ${target_arch}")
# endif()

# set(CMAKE_AR ${target_arch}-ar CACHE FILEPATH "" FORCE)
# set(CMAKE_RANLIB ${target_arch}-ranlib)
# set(CMAKE_LINKER ${target_arch}-ld)

# # Not all shared libraries dependencies are instaled in host machine.
# # Make sure linker doesn't complain.
# set(CMAKE_EXE_LINKER_FLAGS_INIT -Wl,--allow-shlib-undefined)

# # instruct nvcc to use our cross-compiler
# set(CMAKE_CUDA_FLAGS "-ccbin ${CMAKE_CXX_COMPILER} -Xcompiler -fPIC" CACHE STRING "" FORCE)

# SET(TARGET_FS "/l4t/targetfs/")
# SET(SMS "87")
