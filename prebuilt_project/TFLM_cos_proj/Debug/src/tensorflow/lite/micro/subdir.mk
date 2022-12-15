################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../src/tensorflow/lite/micro/all_ops_resolver.cc \
../src/tensorflow/lite/micro/debug_log.cc \
../src/tensorflow/lite/micro/fake_micro_context.cc \
../src/tensorflow/lite/micro/flatbuffer_utils.cc \
../src/tensorflow/lite/micro/memory_helpers.cc \
../src/tensorflow/lite/micro/micro_allocation_info.cc \
../src/tensorflow/lite/micro/micro_allocator.cc \
../src/tensorflow/lite/micro/micro_context.cc \
../src/tensorflow/lite/micro/micro_error_reporter.cc \
../src/tensorflow/lite/micro/micro_graph.cc \
../src/tensorflow/lite/micro/micro_interpreter.cc \
../src/tensorflow/lite/micro/micro_profiler.cc \
../src/tensorflow/lite/micro/micro_resource_variable.cc \
../src/tensorflow/lite/micro/micro_string.cc \
../src/tensorflow/lite/micro/micro_utils.cc \
../src/tensorflow/lite/micro/mock_micro_graph.cc \
../src/tensorflow/lite/micro/recording_micro_allocator.cc \
../src/tensorflow/lite/micro/test_helper_custom_ops.cc \
../src/tensorflow/lite/micro/test_helpers.cc 

SREC += \
TFLM_cos_proj.srec 

CC_DEPS += \
./src/tensorflow/lite/micro/all_ops_resolver.d \
./src/tensorflow/lite/micro/debug_log.d \
./src/tensorflow/lite/micro/fake_micro_context.d \
./src/tensorflow/lite/micro/flatbuffer_utils.d \
./src/tensorflow/lite/micro/memory_helpers.d \
./src/tensorflow/lite/micro/micro_allocation_info.d \
./src/tensorflow/lite/micro/micro_allocator.d \
./src/tensorflow/lite/micro/micro_context.d \
./src/tensorflow/lite/micro/micro_error_reporter.d \
./src/tensorflow/lite/micro/micro_graph.d \
./src/tensorflow/lite/micro/micro_interpreter.d \
./src/tensorflow/lite/micro/micro_profiler.d \
./src/tensorflow/lite/micro/micro_resource_variable.d \
./src/tensorflow/lite/micro/micro_string.d \
./src/tensorflow/lite/micro/micro_utils.d \
./src/tensorflow/lite/micro/mock_micro_graph.d \
./src/tensorflow/lite/micro/recording_micro_allocator.d \
./src/tensorflow/lite/micro/test_helper_custom_ops.d \
./src/tensorflow/lite/micro/test_helpers.d 

OBJS += \
./src/tensorflow/lite/micro/all_ops_resolver.o \
./src/tensorflow/lite/micro/debug_log.o \
./src/tensorflow/lite/micro/fake_micro_context.o \
./src/tensorflow/lite/micro/flatbuffer_utils.o \
./src/tensorflow/lite/micro/memory_helpers.o \
./src/tensorflow/lite/micro/micro_allocation_info.o \
./src/tensorflow/lite/micro/micro_allocator.o \
./src/tensorflow/lite/micro/micro_context.o \
./src/tensorflow/lite/micro/micro_error_reporter.o \
./src/tensorflow/lite/micro/micro_graph.o \
./src/tensorflow/lite/micro/micro_interpreter.o \
./src/tensorflow/lite/micro/micro_profiler.o \
./src/tensorflow/lite/micro/micro_resource_variable.o \
./src/tensorflow/lite/micro/micro_string.o \
./src/tensorflow/lite/micro/micro_utils.o \
./src/tensorflow/lite/micro/mock_micro_graph.o \
./src/tensorflow/lite/micro/recording_micro_allocator.o \
./src/tensorflow/lite/micro/test_helper_custom_ops.o \
./src/tensorflow/lite/micro/test_helpers.o 

MAP += \
TFLM_cos_proj.map 


# Each subdirectory must supply rules for building sources it contributes
src/tensorflow/lite/micro/%.o: ../src/tensorflow/lite/micro/%.cc
	$(file > $@.in,-mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -D_RENESAS_SYNERGY_ -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy_cfg/ssp_cfg/bsp" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/src/third_party/flatbuffers/include" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/src/third_party/gemmlowp" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/src/third_party/kissfft" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/src/third_party/ruy" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy_cfg/ssp_cfg/driver" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/inc" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/inc/bsp" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/inc/bsp/cmsis/Include" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/inc/driver/api" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/inc/driver/instances" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/src" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/src/synergy_gen" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy_cfg/ssp_cfg/framework" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/inc/framework/api" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/inc/framework/instances" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy_cfg/ssp_cfg/framework/el" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/inc/framework/el" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/src/framework/el/tx" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/src/framework/el/ux" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/src/framework/el/tx/tx_src" -std=c++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c++ "$<")
	@echo Building file: $< && arm-none-eabi-g++ @"$@.in"

