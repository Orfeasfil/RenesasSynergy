################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../synergy/ssp/src/driver/r_ioport/r_ioport.c 

SREC += \
TFLM_cos_proj.srec 

C_DEPS += \
./synergy/ssp/src/driver/r_ioport/r_ioport.d 

OBJS += \
./synergy/ssp/src/driver/r_ioport/r_ioport.o 

MAP += \
TFLM_cos_proj.map 


# Each subdirectory must supply rules for building sources it contributes
synergy/ssp/src/driver/r_ioport/%.o: ../synergy/ssp/src/driver/r_ioport/%.c
	$(file > $@.in,-mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -D_RENESAS_SYNERGY_ -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy_cfg/ssp_cfg/bsp" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/src/third_party/kissfft" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/src/third_party/gemmlowp" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/src/third_party/ruy" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/src/third_party/flatbuffers/include" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy_cfg/ssp_cfg/driver" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/inc" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/inc/bsp" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/inc/bsp/cmsis/Include" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/inc/driver/api" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/inc/driver/instances" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/src" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/src/synergy_gen" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy_cfg/ssp_cfg/framework" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/inc/framework/api" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/inc/framework/instances" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy_cfg/ssp_cfg/framework/el" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/inc/framework/el" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/src/framework/el/tx" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/src/framework/el/ux" -I"C:/Users/ElliA/e2_studio/workspace30/TFLM_cos_proj/synergy/ssp/src/framework/el/tx/tx_src" -std=c99 -v -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

