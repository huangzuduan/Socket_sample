################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/mongo/client/examples/authTest.cpp \
../src/mongo/client/examples/clientTest.cpp \
../src/mongo/client/examples/first.cpp \
../src/mongo/client/examples/httpClientTest.cpp \
../src/mongo/client/examples/rs.cpp \
../src/mongo/client/examples/second.cpp \
../src/mongo/client/examples/tutorial.cpp \
../src/mongo/client/examples/whereExample.cpp 

OBJS += \
./src/mongo/client/examples/authTest.o \
./src/mongo/client/examples/clientTest.o \
./src/mongo/client/examples/first.o \
./src/mongo/client/examples/httpClientTest.o \
./src/mongo/client/examples/rs.o \
./src/mongo/client/examples/second.o \
./src/mongo/client/examples/tutorial.o \
./src/mongo/client/examples/whereExample.o 

CPP_DEPS += \
./src/mongo/client/examples/authTest.d \
./src/mongo/client/examples/clientTest.d \
./src/mongo/client/examples/first.d \
./src/mongo/client/examples/httpClientTest.d \
./src/mongo/client/examples/rs.d \
./src/mongo/client/examples/second.d \
./src/mongo/client/examples/tutorial.d \
./src/mongo/client/examples/whereExample.d 


# Each subdirectory must supply rules for building sources it contributes
src/mongo/client/examples/%.o: ../src/mongo/client/examples/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


