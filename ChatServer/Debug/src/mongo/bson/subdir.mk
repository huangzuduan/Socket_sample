################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/mongo/bson/oid.cpp 

OBJS += \
./src/mongo/bson/oid.o 

CPP_DEPS += \
./src/mongo/bson/oid.d 


# Each subdirectory must supply rules for building sources it contributes
src/mongo/bson/%.o: ../src/mongo/bson/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


