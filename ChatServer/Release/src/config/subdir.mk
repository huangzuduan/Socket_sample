################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/config/ServerConfig.cpp 

OBJS += \
./src/config/ServerConfig.o 

CPP_DEPS += \
./src/config/ServerConfig.d 


# Each subdirectory must supply rules for building sources it contributes
src/config/%.o: ../src/config/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O3 -Wall -c -fmessage-length=0  -L. -lmongoclient -lpthread -lboost_thread-mt -lboost_filesystem-mt -lboost_system-mt -lboost_thread-mt -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


