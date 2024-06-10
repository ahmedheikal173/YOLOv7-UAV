################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../CBS1_tb.cpp 

OBJS += \
./testbench/CBS1_tb.o 

CPP_DEPS += \
./testbench/CBS1_tb.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/CBS1_tb.o: C:/Users/DELL/AppData/Roaming/Xilinx/Vivado/gp_project/CBS1_tb.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -IC:/Users/DELL/AppData/Roaming/Xilinx/Vivado -IF:/xilinx-/Vivado/2018.3/win64/tools/auto_cc/include -IF:/xilinx-/Vivado/2018.3/win64/tools/systemc/include -IF:/xilinx-/Vivado/2018.3/include -IF:/xilinx-/Vivado/2018.3/include/etc -IF:/xilinx-/Vivado/2018.3/include/ap_sysc -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/CBS1_tb.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


