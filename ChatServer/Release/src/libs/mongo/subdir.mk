################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/libs/mongo/buildinfo.cpp \
../src/libs/mongo/pch.cpp 

OBJS += \
./src/libs/mongo/buildinfo.o \
./src/libs/mongo/pch.o 

CPP_DEPS += \
./src/libs/mongo/buildinfo.d \
./src/libs/mongo/pch.d 


# Each subdirectory must supply rules for building sources it contributes
src/libs/mongo/%.o: ../src/libs/mongo/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


