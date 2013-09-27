################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/mongo/client/authentication_table.cpp \
../src/mongo/client/clientAndShell.cpp \
../src/mongo/client/clientOnly.cpp \
../src/mongo/client/connection_factory.cpp \
../src/mongo/client/connpool.cpp \
../src/mongo/client/dbclient.cpp \
../src/mongo/client/dbclient_rs.cpp \
../src/mongo/client/dbclientcursor.cpp \
../src/mongo/client/distlock.cpp \
../src/mongo/client/gridfs.cpp \
../src/mongo/client/model.cpp \
../src/mongo/client/syncclusterconnection.cpp 

OBJS += \
./src/mongo/client/authentication_table.o \
./src/mongo/client/clientAndShell.o \
./src/mongo/client/clientOnly.o \
./src/mongo/client/connection_factory.o \
./src/mongo/client/connpool.o \
./src/mongo/client/dbclient.o \
./src/mongo/client/dbclient_rs.o \
./src/mongo/client/dbclientcursor.o \
./src/mongo/client/distlock.o \
./src/mongo/client/gridfs.o \
./src/mongo/client/model.o \
./src/mongo/client/syncclusterconnection.o 

CPP_DEPS += \
./src/mongo/client/authentication_table.d \
./src/mongo/client/clientAndShell.d \
./src/mongo/client/clientOnly.d \
./src/mongo/client/connection_factory.d \
./src/mongo/client/connpool.d \
./src/mongo/client/dbclient.d \
./src/mongo/client/dbclient_rs.d \
./src/mongo/client/dbclientcursor.d \
./src/mongo/client/distlock.d \
./src/mongo/client/gridfs.d \
./src/mongo/client/model.d \
./src/mongo/client/syncclusterconnection.d 


# Each subdirectory must supply rules for building sources it contributes
src/mongo/client/%.o: ../src/mongo/client/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


