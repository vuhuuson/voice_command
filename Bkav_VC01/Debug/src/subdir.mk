################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hal_entry.c \
../src/voice_main.c 

OBJS += \
./src/hal_entry.o \
./src/voice_main.o 

C_DEPS += \
./src/hal_entry.d \
./src/voice_main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -D_RENESAS_RA_ -DUART_LOG -I"C:\Users\sonvhc\Desktop\1-TU\Bkav_VC01\src" -I"C:\Users\sonvhc\Desktop\1-TU\Bkav_VC01\ra\fsp\inc" -I"C:\Users\sonvhc\Desktop\1-TU\Bkav_VC01\ra\fsp\inc\api" -I"C:\Users\sonvhc\Desktop\1-TU\Bkav_VC01\ra\fsp\inc\instances" -I"C:\Users\sonvhc\Desktop\1-TU\Bkav_VC01\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"C:\Users\sonvhc\Desktop\1-TU\Bkav_VC01\ra_gen" -I"C:\Users\sonvhc\Desktop\1-TU\Bkav_VC01\ra_cfg\fsp_cfg" -I"C:\Users\sonvhc\Desktop\1-TU\Bkav_VC01\ra_cfg\fsp_cfg\bsp" -I"C:\Users\sonvhc\Desktop\1-TU\Bkav_VC01\src\DSpotter\include" -I"C:\Users\sonvhc\Desktop\1-TU\Bkav_VC01\src\Speex\include" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" -x c "$<"
	@echo 'Finished building: $<'
	@echo ' '


