################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/mongo/buildinfo.cpp \
../src/mongo/pch.cpp 

OBJS += \
./src/mongo/buildinfo.o \
./src/mongo/pch.o 

CPP_DEPS += \
./src/mongo/buildinfo.d \
./src/mongo/pch.d 


# Each subdirectory must supply rules for building sources it contributes
src/mongo/%.o: ../src/mongo/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


