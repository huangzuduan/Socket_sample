################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/libs/mongo/util/assert_util.cpp \
../src/libs/mongo/util/background.cpp \
../src/libs/mongo/util/base64.cpp \
../src/libs/mongo/util/debug_util.cpp \
../src/libs/mongo/util/file_allocator.cpp \
../src/libs/mongo/util/histogram.cpp \
../src/libs/mongo/util/intrusive_counter.cpp \
../src/libs/mongo/util/log.cpp \
../src/libs/mongo/util/md5.cpp \
../src/libs/mongo/util/md5main.cpp \
../src/libs/mongo/util/password.cpp \
../src/libs/mongo/util/ramlog.cpp \
../src/libs/mongo/util/signal_handlers.cpp \
../src/libs/mongo/util/stacktrace.cpp \
../src/libs/mongo/util/stringutils.cpp \
../src/libs/mongo/util/text.cpp \
../src/libs/mongo/util/time_support.cpp \
../src/libs/mongo/util/timer.cpp \
../src/libs/mongo/util/trace.cpp \
../src/libs/mongo/util/util.cpp 

OBJS += \
./src/libs/mongo/util/assert_util.o \
./src/libs/mongo/util/background.o \
./src/libs/mongo/util/base64.o \
./src/libs/mongo/util/debug_util.o \
./src/libs/mongo/util/file_allocator.o \
./src/libs/mongo/util/histogram.o \
./src/libs/mongo/util/intrusive_counter.o \
./src/libs/mongo/util/log.o \
./src/libs/mongo/util/md5.o \
./src/libs/mongo/util/md5main.o \
./src/libs/mongo/util/password.o \
./src/libs/mongo/util/ramlog.o \
./src/libs/mongo/util/signal_handlers.o \
./src/libs/mongo/util/stacktrace.o \
./src/libs/mongo/util/stringutils.o \
./src/libs/mongo/util/text.o \
./src/libs/mongo/util/time_support.o \
./src/libs/mongo/util/timer.o \
./src/libs/mongo/util/trace.o \
./src/libs/mongo/util/util.o 

CPP_DEPS += \
./src/libs/mongo/util/assert_util.d \
./src/libs/mongo/util/background.d \
./src/libs/mongo/util/base64.d \
./src/libs/mongo/util/debug_util.d \
./src/libs/mongo/util/file_allocator.d \
./src/libs/mongo/util/histogram.d \
./src/libs/mongo/util/intrusive_counter.d \
./src/libs/mongo/util/log.d \
./src/libs/mongo/util/md5.d \
./src/libs/mongo/util/md5main.d \
./src/libs/mongo/util/password.d \
./src/libs/mongo/util/ramlog.d \
./src/libs/mongo/util/signal_handlers.d \
./src/libs/mongo/util/stacktrace.d \
./src/libs/mongo/util/stringutils.d \
./src/libs/mongo/util/text.d \
./src/libs/mongo/util/time_support.d \
./src/libs/mongo/util/timer.d \
./src/libs/mongo/util/trace.d \
./src/libs/mongo/util/util.d 


# Each subdirectory must supply rules for building sources it contributes
src/libs/mongo/util/%.o: ../src/libs/mongo/util/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


