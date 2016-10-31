################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_UPPER_SRCS += \
../src/main_macro.C 

CXX_SRCS += \
../src/Hello.cxx 

CPP_SRCS += \
../src/main.cpp 

C_UPPER_DEPS += \
./src/main_macro.d 

CXX_DEPS += \
./src/Hello.d 

OBJS += \
./src/Hello.o \
./src/main.o \
./src/main_macro.o 

CPP_DEPS += \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++  "$<" -std=c++0x -DDEBUG -O0 -g3 -Wall -c -fmessage-length=0 `root-config --cflags` -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++  "$<" -std=c++0x -DDEBUG -O0 -g3 -Wall -c -fmessage-length=0 `root-config --cflags` -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.C
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++  "$<" -std=c++0x -DDEBUG -O0 -g3 -Wall -c -fmessage-length=0 `root-config --cflags` -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


