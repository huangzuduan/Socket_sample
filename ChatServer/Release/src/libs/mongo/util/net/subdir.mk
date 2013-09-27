################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/libs/mongo/util/net/httpclient.cpp \
../src/libs/mongo/util/net/listen.cpp \
../src/libs/mongo/util/net/message.cpp \
../src/libs/mongo/util/net/message_port.cpp \
../src/libs/mongo/util/net/sock.cpp 

OBJS += \
./src/libs/mongo/util/net/httpclient.o \
./src/libs/mongo/util/net/listen.o \
./src/libs/mongo/util/net/message.o \
./src/libs/mongo/util/net/message_port.o \
./src/libs/mongo/util/net/sock.o 

CPP_DEPS += \
./src/libs/mongo/util/net/httpclient.d \
./src/libs/mongo/util/net/listen.d \
./src/libs/mongo/util/net/message.d \
./src/libs/mongo/util/net/message_port.d \
./src/libs/mongo/util/net/sock.d 


# Each subdirectory must supply rules for building sources it contributes
src/libs/mongo/util/net/%.o: ../src/libs/mongo/util/net/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


