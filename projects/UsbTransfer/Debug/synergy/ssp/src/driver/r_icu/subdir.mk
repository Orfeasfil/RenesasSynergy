################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../synergy/ssp/src/driver/r_icu/r_icu.c 

C_DEPS += \
./synergy/ssp/src/driver/r_icu/r_icu.d 

OBJS += \
./synergy/ssp/src/driver/r_icu/r_icu.o 


# Each subdirectory must supply rules for building sources it contributes
synergy/ssp/src/driver/r_icu/%.o: ../synergy/ssp/src/driver/r_icu/%.c
	$(file > $@.in,-mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -D_RENESAS_SYNERGY_ -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/synergy_cfg/ssp_cfg/bsp" -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/synergy_cfg/ssp_cfg/driver" -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/synergy/ssp/inc" -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/synergy/ssp/inc/bsp" -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/synergy/ssp/inc/bsp/cmsis/Include" -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/synergy/ssp/inc/driver/api" -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/synergy/ssp/inc/driver/instances" -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/src" -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/src/synergy_gen" -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/synergy_cfg/ssp_cfg/framework" -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/synergy/ssp/inc/framework/api" -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/synergy/ssp/inc/framework/instances" -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/synergy_cfg/ssp_cfg/framework/el" -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/synergy/ssp/inc/framework/el" -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/synergy/ssp/src/framework/el/tx" -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/synergy/ssp/src/framework/el/ux" -I"C:/Users/Admin/e2_studio/workspace_disseration/UsbTransfer/synergy/ssp/src/framework/el/tx/tx_src" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

