################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/gateway/ChatServer.cpp \
../src/gateway/ClassHandler.cpp \
../src/gateway/Client.cpp \
../src/gateway/Clients.cpp \
../src/gateway/Decoder.cpp \
../src/gateway/Encoder.cpp \
../src/gateway/Foo.cpp \
../src/gateway/ServerHandler.cpp \
../src/gateway/ServerSocket.cpp \
../src/gateway/Socket.cpp \
../src/gateway/ThreadReadWriteLock.cpp 

OBJS += \
./src/gateway/ChatServer.o \
./src/gateway/ClassHandler.o \
./src/gateway/Client.o \
./src/gateway/Clients.o \
./src/gateway/Decoder.o \
./src/gateway/Encoder.o \
./src/gateway/Foo.o \
./src/gateway/ServerHandler.o \
./src/gateway/ServerSocket.o \
./src/gateway/Socket.o \
./src/gateway/ThreadReadWriteLock.o 

CPP_DEPS += \
./src/gateway/ChatServer.d \
./src/gateway/ClassHandler.d \
./src/gateway/Client.d \
./src/gateway/Clients.d \
./src/gateway/Decoder.d \
./src/gateway/Encoder.d \
./src/gateway/Foo.d \
./src/gateway/ServerHandler.d \
./src/gateway/ServerSocket.d \
./src/gateway/Socket.d \
./src/gateway/ThreadReadWriteLock.d 


# Each subdirectory must supply rules for building sources it contributes
src/gateway/%.o: ../src/gateway/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O3 -Wall -c -fmessage-length=0  -L. -lmongoclient -lpthread -lboost_thread-mt -lboost_filesystem-mt -lboost_system-mt -lboost_thread-mt -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


