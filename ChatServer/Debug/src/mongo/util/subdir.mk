################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/mongo/util/assert_util.cpp \
../src/mongo/util/background.cpp \
../src/mongo/util/base64.cpp \
../src/mongo/util/debug_util.cpp \
../src/mongo/util/file_allocator.cpp \
../src/mongo/util/histogram.cpp \
../src/mongo/util/intrusive_counter.cpp \
../src/mongo/util/log.cpp \
../src/mongo/util/md5.cpp \
../src/mongo/util/md5main.cpp \
../src/mongo/util/password.cpp \
../src/mongo/util/ramlog.cpp \
../src/mongo/util/signal_handlers.cpp \
../src/mongo/util/stacktrace.cpp \
../src/mongo/util/stringutils.cpp \
../src/mongo/util/text.cpp \
../src/mongo/util/time_support.cpp \
../src/mongo/util/timer.cpp \
../src/mongo/util/trace.cpp \
../src/mongo/util/util.cpp 

OBJS += \
./src/mongo/util/assert_util.o \
./src/mongo/util/background.o \
./src/mongo/util/base64.o \
./src/mongo/util/debug_util.o \
./src/mongo/util/file_allocator.o \
./src/mongo/util/histogram.o \
./src/mongo/util/intrusive_counter.o \
./src/mongo/util/log.o \
./src/mongo/util/md5.o \
./src/mongo/util/md5main.o \
./src/mongo/util/password.o \
./src/mongo/util/ramlog.o \
./src/mongo/util/signal_handlers.o \
./src/mongo/util/stacktrace.o \
./src/mongo/util/stringutils.o \
./src/mongo/util/text.o \
./src/mongo/util/time_support.o \
./src/mongo/util/timer.o \
./src/mongo/util/trace.o \
./src/mongo/util/util.o 

CPP_DEPS += \
./src/mongo/util/assert_util.d \
./src/mongo/util/background.d \
./src/mongo/util/base64.d \
./src/mongo/util/debug_util.d \
./src/mongo/util/file_allocator.d \
./src/mongo/util/histogram.d \
./src/mongo/util/intrusive_counter.d \
./src/mongo/util/log.d \
./src/mongo/util/md5.d \
./src/mongo/util/md5main.d \
./src/mongo/util/password.d \
./src/mongo/util/ramlog.d \
./src/mongo/util/signal_handlers.d \
./src/mongo/util/stacktrace.d \
./src/mongo/util/stringutils.d \
./src/mongo/util/text.d \
./src/mongo/util/time_support.d \
./src/mongo/util/timer.d \
./src/mongo/util/trace.d \
./src/mongo/util/util.d 


# Each subdirectory must supply rules for building sources it contributes
src/mongo/util/%.o: ../src/mongo/util/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


