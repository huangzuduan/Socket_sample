################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/mongo/util/net/httpclient.cpp \
../src/mongo/util/net/listen.cpp \
../src/mongo/util/net/message.cpp \
../src/mongo/util/net/message_port.cpp \
../src/mongo/util/net/sock.cpp 

OBJS += \
./src/mongo/util/net/httpclient.o \
./src/mongo/util/net/listen.o \
./src/mongo/util/net/message.o \
./src/mongo/util/net/message_port.o \
./src/mongo/util/net/sock.o 

CPP_DEPS += \
./src/mongo/util/net/httpclient.d \
./src/mongo/util/net/listen.d \
./src/mongo/util/net/message.d \
./src/mongo/util/net/message_port.d \
./src/mongo/util/net/sock.d 


# Each subdirectory must supply rules for building sources it contributes
src/mongo/util/net/%.o: ../src/mongo/util/net/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


