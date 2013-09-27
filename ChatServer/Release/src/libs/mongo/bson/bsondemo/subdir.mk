################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/libs/mongo/bson/bsondemo/bsondemo.cpp 

OBJS += \
./src/libs/mongo/bson/bsondemo/bsondemo.o 

CPP_DEPS += \
./src/libs/mongo/bson/bsondemo/bsondemo.d 


# Each subdirectory must supply rules for building sources it contributes
src/libs/mongo/bson/bsondemo/%.o: ../src/libs/mongo/bson/bsondemo/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


