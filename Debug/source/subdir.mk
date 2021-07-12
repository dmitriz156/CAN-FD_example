################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/main.c \
../source/mco_libcb.c \
../source/mcohw_com_generic.c \
../source/mcohw_nvol_sim.c \
../source/semihost_hardfault.c \
../source/user_LPC5xxxx.c 

OBJS += \
./source/main.o \
./source/mco_libcb.o \
./source/mcohw_com_generic.o \
./source/mcohw_nvol_sim.o \
./source/semihost_hardfault.o \
./source/user_LPC5xxxx.o 

C_DEPS += \
./source/main.d \
./source/mco_libcb.d \
./source/mcohw_com_generic.d \
./source/mcohw_nvol_sim.d \
./source/semihost_hardfault.d \
./source/user_LPC5xxxx.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_LPC55S06JBD64 -DUSE_CANOPEN_FD -DSDK_DEBUGCONSOLE=1 -DCUSTOM_CAN_BITTIMING=1 -DARM_MATH_CM33 -DSERIAL_PORT_TYPE_UART=1 -DCPU_LPC55S06JBD64_cm33 -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__REDLIB__ -I"F:\LPCworkspace\lpcxpresso55s06_mcofd_manager\board" -I"F:\LPCworkspace\lpcxpresso55s06_mcofd_manager\source" -I"F:\LPCworkspace\lpcxpresso55s06_mcofd_manager" -I"F:\LPCworkspace\lpcxpresso55s06_mcofd_manager\drivers" -I"F:\LPCworkspace\lpcxpresso55s06_mcofd_manager\MCO" -I"F:\LPCworkspace\lpcxpresso55s06_mcofd_manager\device" -I"F:\LPCworkspace\lpcxpresso55s06_mcofd_manager\utilities" -I"F:\LPCworkspace\lpcxpresso55s06_mcofd_manager\component\uart" -I"F:\LPCworkspace\lpcxpresso55s06_mcofd_manager\component\serial_manager" -I"F:\LPCworkspace\lpcxpresso55s06_mcofd_manager\component\lists" -I"F:\LPCworkspace\lpcxpresso55s06_mcofd_manager\CMSIS" -I"F:\LPCworkspace\lpcxpresso55s06_mcofd_manager\MCO-Config" -I"F:\LPCworkspace\lpcxpresso55s06_mcofd_manager\MCO-Config\EDS-FD" -O0 -fno-common -g3 -Wall -mcpu=cortex-m33  -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


