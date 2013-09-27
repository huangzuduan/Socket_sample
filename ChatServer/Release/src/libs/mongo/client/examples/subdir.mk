################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/libs/mongo/client/examples/authTest.cpp \
../src/libs/mongo/client/examples/clientTest.cpp \
../src/libs/mongo/client/examples/first.cpp \
../src/libs/mongo/client/examples/httpClientTest.cpp \
../src/libs/mongo/client/examples/rs.cpp \
../src/libs/mongo/client/examples/second.cpp \
../src/libs/mongo/client/examples/tutorial.cpp \
../src/libs/mongo/client/examples/whereExample.cpp 

OBJS += \
./src/libs/mongo/client/examples/authTest.o \
./src/libs/mongo/client/examples/clientTest.o \
./src/libs/mongo/client/examples/first.o \
./src/libs/mongo/client/examples/httpClientTest.o \
./src/libs/mongo/client/examples/rs.o \
./src/libs/mongo/client/examples/second.o \
./src/libs/mongo/client/examples/tutorial.o \
./src/libs/mongo/client/examples/whereExample.o 

CPP_DEPS += \
./src/libs/mongo/client/examples/authTest.d \
./src/libs/mongo/client/examples/clientTest.d \
./src/libs/mongo/client/examples/first.d \
./src/libs/mongo/client/examples/httpClientTest.d \
./src/libs/mongo/client/examples/rs.d \
./src/libs/mongo/client/examples/second.d \
./src/libs/mongo/client/examples/tutorial.d \
./src/libs/mongo/client/examples/whereExample.d 


# Each subdirectory must supply rules for building sources it contributes
src/libs/mongo/client/examples/%.o: ../src/libs/mongo/client/examples/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


