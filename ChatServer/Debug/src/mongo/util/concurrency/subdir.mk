################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/mongo/util/concurrency/mutexdebugger.cpp \
../src/mongo/util/concurrency/rwlockimpl.cpp \
../src/mongo/util/concurrency/spin_lock.cpp \
../src/mongo/util/concurrency/synchronization.cpp \
../src/mongo/util/concurrency/task.cpp \
../src/mongo/util/concurrency/thread_pool.cpp 

OBJS += \
./src/mongo/util/concurrency/mutexdebugger.o \
./src/mongo/util/concurrency/rwlockimpl.o \
./src/mongo/util/concurrency/spin_lock.o \
./src/mongo/util/concurrency/synchronization.o \
./src/mongo/util/concurrency/task.o \
./src/mongo/util/concurrency/thread_pool.o 

CPP_DEPS += \
./src/mongo/util/concurrency/mutexdebugger.d \
./src/mongo/util/concurrency/rwlockimpl.d \
./src/mongo/util/concurrency/spin_lock.d \
./src/mongo/util/concurrency/synchronization.d \
./src/mongo/util/concurrency/task.d \
./src/mongo/util/concurrency/thread_pool.d 


# Each subdirectory must supply rules for building sources it contributes
src/mongo/util/concurrency/%.o: ../src/mongo/util/concurrency/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


