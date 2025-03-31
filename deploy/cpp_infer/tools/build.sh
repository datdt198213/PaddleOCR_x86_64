PADDLE_LIB=/home/anlab/work_dir/x86_64/PaddleOCR/deploy/cpp_infer/paddle_inference/paddle_inference_openblas
OPENCV_DIR=/home/anlab/work_dir/x86_64/PaddleOCR/deploy/cpp_infer/opencv-3.4.7/opencv3
CUDA_LIB_DIR=/usr/local/cuda/lib64
CUDNN_LIB_DIR=/usr/lib/x86_64-linux-gnu
TENSORRT_DIR=/usr/lib/x86_64-linux-gnu

BUILD_DIR=build
rm -rf ${BUILD_DIR}
mkdir ${BUILD_DIR}
cd ${BUILD_DIR}
cmake .. \
    -DCMAKE_BUILD_TYPE=Release \
    -DPADDLE_LIB=${PADDLE_LIB} \
    -DWITH_MKL=OFF \
    -DWITH_STATIC_LIB=OFF \
    -DWITH_GPU=ON \
    -DWITH_TENSORRT=OFF \
    -DOPENCV_DIR=${OPENCV_DIR} \
    -DCUDNN_LIB=${CUDNN_LIB_DIR} \
    -DCUDA_LIB=${CUDA_LIB_DIR} \
    -DTENSORRT_DIR=${TENSORRT_DIR}
    # -DCMAKE_TOOLCHAIN_FILE=${TOOLCHAIN_AARCH64_DIR}

make -j
