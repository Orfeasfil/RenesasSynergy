################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../src/examples/hello_world/constants.cc \
../src/examples/hello_world/hello_world_model_data.cc \
../src/examples/hello_world/main.cc \
../src/examples/hello_world/main_functions.cc \
../src/examples/hello_world/output_handler.cc 

CC_DEPS += \
./src/examples/hello_world/constants.d \
./src/examples/hello_world/hello_world_model_data.d \
./src/examples/hello_world/main.d \
./src/examples/hello_world/main_functions.d \
./src/examples/hello_world/output_handler.d 

OBJS += \
./src/examples/hello_world/constants.o \
./src/examples/hello_world/hello_world_model_data.o \
./src/examples/hello_world/main.o \
./src/examples/hello_world/main_functions.o \
./src/examples/hello_world/output_handler.o 


# Each subdirectory must supply rules for building sources it contributes
src/examples/hello_world/%.o: ../src/examples/hello_world/%.cc
	$(file > $@.in,-mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -D_RENESAS_SYNERGY_ -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/synergy_cfg/ssp_cfg/bsp" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/src/third_party/flatbuffers/include" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/src/third_party/gemmlowp" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/src/third_party/kissfft" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/src/third_party/ruy" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/synergy_cfg/ssp_cfg/driver" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/synergy/ssp/inc" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/synergy/ssp/inc/bsp" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/synergy/ssp/inc/bsp/cmsis/Include" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/synergy/ssp/inc/driver/api" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/synergy/ssp/inc/driver/instances" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/src" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/src/synergy_gen" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/synergy_cfg/ssp_cfg/framework" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/synergy/ssp/inc/framework/api" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/synergy/ssp/inc/framework/instances" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/synergy_cfg/ssp_cfg/framework/el" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/synergy/ssp/inc/framework/el" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/synergy/ssp/src/framework/el/tx" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/synergy/ssp/src/framework/el/ux" -I"C:/Users/Admin/e2_studio/workspace_disseration/Hello_World_NN_new/synergy/ssp/src/framework/el/tx/tx_src" -std=c++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c++ "$<")
	@echo Building file: $< && arm-none-eabi-g++ @"$@.in"

