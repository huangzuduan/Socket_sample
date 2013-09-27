################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ChatServer.cpp \
../src/Client.cpp \
../src/Clients.cpp \
../src/Decoder.cpp \
../src/Encoder.cpp \
../src/ServerSocket.cpp \
../src/Socket.cpp \
../src/ThreadReadWriteLock.cpp \
../src/TypeConvert.cpp 

OBJS += \
./src/ChatServer.o \
./src/Client.o \
./src/Clients.o \
./src/Decoder.o \
./src/Encoder.o \
./src/ServerSocket.o \
./src/Socket.o \
./src/ThreadReadWriteLock.o \
./src/TypeConvert.o 

CPP_DEPS += \
./src/ChatServer.d \
./src/Client.d \
./src/Clients.d \
./src/Decoder.d \
./src/Encoder.d \
./src/ServerSocket.d \
./src/Socket.d \
./src/ThreadReadWriteLock.d \
./src/TypeConvert.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


