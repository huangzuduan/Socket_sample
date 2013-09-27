################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/libs/mongo/util/concurrency/mutexdebugger.cpp \
../src/libs/mongo/util/concurrency/rwlockimpl.cpp \
../src/libs/mongo/util/concurrency/spin_lock.cpp \
../src/libs/mongo/util/concurrency/synchronization.cpp \
../src/libs/mongo/util/concurrency/task.cpp \
../src/libs/mongo/util/concurrency/thread_pool.cpp 

OBJS += \
./src/libs/mongo/util/concurrency/mutexdebugger.o \
./src/libs/mongo/util/concurrency/rwlockimpl.o \
./src/libs/mongo/util/concurrency/spin_lock.o \
./src/libs/mongo/util/concurrency/synchronization.o \
./src/libs/mongo/util/concurrency/task.o \
./src/libs/mongo/util/concurrency/thread_pool.o 

CPP_DEPS += \
./src/libs/mongo/util/concurrency/mutexdebugger.d \
./src/libs/mongo/util/concurrency/rwlockimpl.d \
./src/libs/mongo/util/concurrency/spin_lock.d \
./src/libs/mongo/util/concurrency/synchronization.d \
./src/libs/mongo/util/concurrency/task.d \
./src/libs/mongo/util/concurrency/thread_pool.d 


# Each subdirectory must supply rules for building sources it contributes
src/libs/mongo/util/concurrency/%.o: ../src/libs/mongo/util/concurrency/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


