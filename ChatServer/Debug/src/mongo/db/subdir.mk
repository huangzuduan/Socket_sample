################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/mongo/db/dbmessage.cpp \
../src/mongo/db/jsobj.cpp \
../src/mongo/db/json.cpp \
../src/mongo/db/lasterror.cpp \
../src/mongo/db/namespace.cpp \
../src/mongo/db/nonce.cpp 

OBJS += \
./src/mongo/db/dbmessage.o \
./src/mongo/db/jsobj.o \
./src/mongo/db/json.o \
./src/mongo/db/lasterror.o \
./src/mongo/db/namespace.o \
./src/mongo/db/nonce.o 

CPP_DEPS += \
./src/mongo/db/dbmessage.d \
./src/mongo/db/jsobj.d \
./src/mongo/db/json.d \
./src/mongo/db/lasterror.d \
./src/mongo/db/namespace.d \
./src/mongo/db/nonce.d 


# Each subdirectory must supply rules for building sources it contributes
src/mongo/db/%.o: ../src/mongo/db/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


