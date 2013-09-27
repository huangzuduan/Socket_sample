################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/libs/mongo/client/authentication_table.cpp \
../src/libs/mongo/client/clientAndShell.cpp \
../src/libs/mongo/client/clientOnly.cpp \
../src/libs/mongo/client/connection_factory.cpp \
../src/libs/mongo/client/connpool.cpp \
../src/libs/mongo/client/dbclient.cpp \
../src/libs/mongo/client/dbclient_rs.cpp \
../src/libs/mongo/client/dbclientcursor.cpp \
../src/libs/mongo/client/distlock.cpp \
../src/libs/mongo/client/gridfs.cpp \
../src/libs/mongo/client/model.cpp \
../src/libs/mongo/client/syncclusterconnection.cpp 

OBJS += \
./src/libs/mongo/client/authentication_table.o \
./src/libs/mongo/client/clientAndShell.o \
./src/libs/mongo/client/clientOnly.o \
./src/libs/mongo/client/connection_factory.o \
./src/libs/mongo/client/connpool.o \
./src/libs/mongo/client/dbclient.o \
./src/libs/mongo/client/dbclient_rs.o \
./src/libs/mongo/client/dbclientcursor.o \
./src/libs/mongo/client/distlock.o \
./src/libs/mongo/client/gridfs.o \
./src/libs/mongo/client/model.o \
./src/libs/mongo/client/syncclusterconnection.o 

CPP_DEPS += \
./src/libs/mongo/client/authentication_table.d \
./src/libs/mongo/client/clientAndShell.d \
./src/libs/mongo/client/clientOnly.d \
./src/libs/mongo/client/connection_factory.d \
./src/libs/mongo/client/connpool.d \
./src/libs/mongo/client/dbclient.d \
./src/libs/mongo/client/dbclient_rs.d \
./src/libs/mongo/client/dbclientcursor.d \
./src/libs/mongo/client/distlock.d \
./src/libs/mongo/client/gridfs.d \
./src/libs/mongo/client/model.d \
./src/libs/mongo/client/syncclusterconnection.d 


# Each subdirectory must supply rules for building sources it contributes
src/libs/mongo/client/%.o: ../src/libs/mongo/client/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


