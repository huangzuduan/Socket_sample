################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/libs/mongo/db/dbmessage.cpp \
../src/libs/mongo/db/jsobj.cpp \
../src/libs/mongo/db/json.cpp \
../src/libs/mongo/db/lasterror.cpp \
../src/libs/mongo/db/namespace.cpp \
../src/libs/mongo/db/nonce.cpp 

OBJS += \
./src/libs/mongo/db/dbmessage.o \
./src/libs/mongo/db/jsobj.o \
./src/libs/mongo/db/json.o \
./src/libs/mongo/db/lasterror.o \
./src/libs/mongo/db/namespace.o \
./src/libs/mongo/db/nonce.o 

CPP_DEPS += \
./src/libs/mongo/db/dbmessage.d \
./src/libs/mongo/db/jsobj.d \
./src/libs/mongo/db/json.d \
./src/libs/mongo/db/lasterror.d \
./src/libs/mongo/db/namespace.d \
./src/libs/mongo/db/nonce.d 


# Each subdirectory must supply rules for building sources it contributes
src/libs/mongo/db/%.o: ../src/libs/mongo/db/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


