################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ChatClient.cpp \
../src/ClientSocket.cpp \
../src/Decoder.cpp \
../src/Encoder.cpp \
../src/Socket.cpp \
../src/TypeConvert.cpp 

OBJS += \
./src/ChatClient.o \
./src/ClientSocket.o \
./src/Decoder.o \
./src/Encoder.o \
./src/Socket.o \
./src/TypeConvert.o 

CPP_DEPS += \
./src/ChatClient.d \
./src/ClientSocket.d \
./src/Decoder.d \
./src/Encoder.d \
./src/Socket.d \
./src/TypeConvert.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


