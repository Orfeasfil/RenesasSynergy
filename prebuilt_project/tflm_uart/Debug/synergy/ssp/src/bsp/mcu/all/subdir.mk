################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../synergy/ssp/src/bsp/mcu/all/bsp_common.c \
../synergy/ssp/src/bsp/mcu/all/bsp_common_leds.c \
../synergy/ssp/src/bsp/mcu/all/bsp_delay.c \
../synergy/ssp/src/bsp/mcu/all/bsp_irq.c \
../synergy/ssp/src/bsp/mcu/all/bsp_locking.c \
../synergy/ssp/src/bsp/mcu/all/bsp_register_protection.c \
../synergy/ssp/src/bsp/mcu/all/bsp_sbrk.c 

SREC += \
tflm_uart.srec 

C_DEPS += \
./synergy/ssp/src/bsp/mcu/all/bsp_common.d \
./synergy/ssp/src/bsp/mcu/all/bsp_common_leds.d \
./synergy/ssp/src/bsp/mcu/all/bsp_delay.d \
./synergy/ssp/src/bsp/mcu/all/bsp_irq.d \
./synergy/ssp/src/bsp/mcu/all/bsp_locking.d \
./synergy/ssp/src/bsp/mcu/all/bsp_register_protection.d \
./synergy/ssp/src/bsp/mcu/all/bsp_sbrk.d 

OBJS += \
./synergy/ssp/src/bsp/mcu/all/bsp_common.o \
./synergy/ssp/src/bsp/mcu/all/bsp_common_leds.o \
./synergy/ssp/src/bsp/mcu/all/bsp_delay.o \
./synergy/ssp/src/bsp/mcu/all/bsp_irq.o \
./synergy/ssp/src/bsp/mcu/all/bsp_locking.o \
./synergy/ssp/src/bsp/mcu/all/bsp_register_protection.o \
./synergy/ssp/src/bsp/mcu/all/bsp_sbrk.o 

MAP += \
tflm_uart.map 


# Each subdirectory must supply rules for building sources it contributes
synergy/ssp/src/bsp/mcu/all/%.o: ../synergy/ssp/src/bsp/mcu/all/%.c
	$(file > $@.in,-mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -gdwarf-4 -D_RENESAS_SYNERGY_ -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/synergy_cfg/ssp_cfg/bsp" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/synergy_cfg/ssp_cfg/driver" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/synergy/ssp/inc" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/synergy/ssp/inc/bsp" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/synergy/ssp/inc/bsp/cmsis/Include" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/synergy/ssp/inc/driver/api" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/synergy/ssp/inc/driver/instances" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/src" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/src/synergy_gen" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/synergy_cfg/ssp_cfg/framework/el" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/synergy/ssp/inc/framework/el" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/synergy/ssp/src/framework/el/tx" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/synergy_cfg/ssp_cfg/framework" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/synergy/ssp/inc/framework/api" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/synergy/ssp/inc/framework/instances" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/src/hello_world" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/src/tensorflow" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/src/tensorflow/lite/c" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/src/tensorflow/lite/core" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/src/tensorflow/lite/kernels" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/src/tensorflow/lite/micro" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/src/tensorflow/lite/schema" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/src/tensorflow/lite" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/src/third_party/flatbuffers" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/src/third_party/gemmlowp" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/src/third_party/kissfft" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/src/third_party/ruy" -I"C:/Users/ElliA/e2_studio/workspace25/tflm_uart/src/third_party/flatbuffers/include" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

