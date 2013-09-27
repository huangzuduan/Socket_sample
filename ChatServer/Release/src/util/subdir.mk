################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/util/Config.cpp \
../src/util/JSONObject.cpp \
../src/util/StringFormat.cpp \
../src/util/TypeConvert.cpp 

OBJS += \
./src/util/Config.o \
./src/util/JSONObject.o \
./src/util/StringFormat.o \
./src/util/TypeConvert.o 

CPP_DEPS += \
./src/util/Config.d \
./src/util/JSONObject.d \
./src/util/StringFormat.d \
./src/util/TypeConvert.d 


# Each subdirectory must supply rules for building sources it contributes
src/util/%.o: ../src/util/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O3 -Wall -c -fmessage-length=0  -L. -lmongoclient -lpthread -lboost_thread-mt -lboost_filesystem-mt -lboost_system-mt -lboost_thread-mt -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


