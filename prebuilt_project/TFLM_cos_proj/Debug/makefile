################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

-include makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include synergy/ssp/src/framework/sf_el_ux_comms_v2/subdir.mk
-include synergy/ssp/src/framework/sf_el_ux/subdir.mk
-include synergy/ssp/src/driver/r_ioport/subdir.mk
-include synergy/ssp/src/driver/r_elc/subdir.mk
-include synergy/ssp/src/driver/r_cgc/subdir.mk
-include synergy/ssp/src/bsp/mcu/s7g2/subdir.mk
-include synergy/ssp/src/bsp/mcu/all/subdir.mk
-include synergy/ssp/src/bsp/cmsis/Device/RENESAS/S7G2/Source/subdir.mk
-include synergy/board/s7g2_sk/subdir.mk
-include src/third_party/kissfft/tools/subdir.mk
-include src/third_party/kissfft/subdir.mk
-include src/tensorflow/lite/schema/subdir.mk
-include src/tensorflow/lite/micro/memory_planner/subdir.mk
-include src/tensorflow/lite/micro/kernels/subdir.mk
-include src/tensorflow/lite/micro/arena_allocator/subdir.mk
-include src/tensorflow/lite/micro/subdir.mk
-include src/tensorflow/lite/kernels/internal/reference/subdir.mk
-include src/tensorflow/lite/kernels/internal/subdir.mk
-include src/tensorflow/lite/kernels/subdir.mk
-include src/tensorflow/lite/core/api/subdir.mk
-include src/tensorflow/lite/c/subdir.mk
-include src/synergy_gen/subdir.mk
-include src/examples/hello_world/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_UPPER_DEPS)),)
-include $(CC_UPPER_DEPS)
endif
ifneq ($(strip $(C++_UPPER_DEPS)),)
-include $(C++_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_UPPER_DEPS)),)
-include $(CPP_UPPER_DEPS)
endif
ifneq ($(strip $(FSY_DEPS)),)
-include $(FSY_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(SRC_UPPER_DEPS)),)
-include $(SRC_UPPER_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(PP_UPPER_DEPS)),)
-include $(PP_UPPER_DEPS)
endif
ifneq ($(strip $(P_DEPS)),)
-include $(P_DEPS)
endif
ifneq ($(strip $(JMP_UPPER_DEPS)),)
-include $(JMP_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(SX_UPPER_DEPS)),)
-include $(SX_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(JMP_DEPS)),)
-include $(JMP_DEPS)
endif
ifneq ($(strip $(CXX_UPPER_DEPS)),)
-include $(CXX_UPPER_DEPS)
endif
ifneq ($(strip $(P_UPPER_DEPS)),)
-include $(P_UPPER_DEPS)
endif
ifneq ($(strip $(FSY_UPPER_DEPS)),)
-include $(FSY_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(SRC_DEPS)),)
-include $(SRC_DEPS)
endif
ifneq ($(strip $(PP_DEPS)),)
-include $(PP_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(SX_DEPS)),)
-include $(SX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
TFLM_cos_proj.srec \

SECONDARY_SIZE += \
TFLM_cos_proj.siz \


# All Target
all: TFLM_cos_proj.elf secondary-outputs

# Tool invocations
TFLM_cos_proj.elf: $(OBJS) $(USER_OBJS) $(LINKER_SCRIPT)
	$(file > TFLM_cos_proj.elf.in,-mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -T "C:\\Users\\ElliA\\e2_studio\\workspace30\\TFLM_cos_proj\\script/r7fs7g27h3a01cfc.ld" -Xlinker --gc-sections -L "C:\\Users\\ElliA\\e2_studio\\workspace30\\TFLM_cos_proj\\synergy\\ssp\\src\\bsp\\cmsis\\DSP_Lib\\cm4_gcc" -L "C:\\Users\\ElliA\\e2_studio\\workspace30\\TFLM_cos_proj\\synergy\\ssp\\src\\bsp\\cmsis\\NN_Lib\\cm4_gcc" -L "C:\\Users\\ElliA\\e2_studio\\workspace30\\TFLM_cos_proj\\synergy\\ssp\\src\\driver\\r_fmi\\libs" -L "C:\\Users\\ElliA\\e2_studio\\workspace30\\TFLM_cos_proj\\synergy\\ssp\\src\\bsp\\mcu\\s7g2" -L "C:\\Users\\ElliA\\e2_studio\\workspace30\\TFLM_cos_proj\\synergy\\ssp\\src\\framework\\el\\tx\\cm4_gcc" -L "C:\\Users\\ElliA\\e2_studio\\workspace30\\TFLM_cos_proj\\synergy\\ssp\\src\\framework\\el\\ux\\cm4_gcc" -L "C:\\Users\\ElliA\\e2_studio\\workspace30\\TFLM_cos_proj\\synergy\\ssp\\src\\framework\\el\\ux_device_class_cdc_acm\\cm4_gcc" -Wl,-Map,"TFLM_cos_proj.map" --specs=nano.specs -u _printf_float -u _scanf_float --specs=rdimon.specs -o "TFLM_cos_proj.elf" -Wl,--start-group $(OBJS) $(USER_OBJS) $(LIBS) -Wl,--end-group)
	@echo Building target: $@ && arm-none-eabi-g++ @"TFLM_cos_proj.elf.in"

TFLM_cos_proj.srec: TFLM_cos_proj.elf
	arm-none-eabi-objcopy -O srec "TFLM_cos_proj.elf"  "TFLM_cos_proj.srec"

TFLM_cos_proj.siz: TFLM_cos_proj.elf
	arm-none-eabi-size --format=berkeley "TFLM_cos_proj.elf"

# Other Targets
clean:
	-$(file > clean_file.tmp,  $(CC_UPPER_DEPS)  $(C++_UPPER_DEPS)  $(CPP_UPPER_DEPS)  $(FSY_DEPS)  $(C_UPPER_DEPS)  $(SECONDARY_SIZE)  $(SRC_UPPER_DEPS)  $(S_DEPS)  $(PP_UPPER_DEPS)  $(P_DEPS)  $(JMP_UPPER_DEPS)  $(ASM_UPPER_DEPS)  $(SX_UPPER_DEPS)  $(CXX_DEPS)  $(SREC)  $(JMP_DEPS)  $(CXX_UPPER_DEPS)  $(P_UPPER_DEPS)  $(FSY_UPPER_DEPS)  $(C_DEPS)  $(SRC_DEPS)  $(PP_DEPS)  $(CC_DEPS)  $(SX_DEPS)  $(C++_DEPS)  $(OBJS)  $(SECONDARY_FLASH)  $(ASM_DEPS)  $(S_UPPER_DEPS)  $(MAP)  $(CPP_DEPS) )
	-@ xargs -P 2 -s 32000 -t -a clean_file.tmp $(RM)
	-@$(RM) clean_file.tmp
	-$(RM)  TFLM_cos_proj.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
