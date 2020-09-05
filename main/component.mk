#
# Main Makefile. This is basically the same as a component makefile.
#
# (Uses default behaviour of compiling all source files in directory, adding 'include' to include path.)

COMPONENT_SRCDIRS := . \
	HardwareLife/Uart \
	HardwareLife/OLED \
	HardwareLife/Gpio/Pwm \
	HardwareLife/Gpio \
	HardwareLife/WiFi \
	HardwareLife/I2C \
	HardwareLife/IMU \
	HardwareLife/Clock \
	HardwareLife \
	Logic/Drive \
	Logic/Picture \
	Logic/Atomar \
	Logic \
	Physics/Motor \
	Physics/Pen \
	Physics/Screen \
	Physics \
	Use/ProjektEi \
	Use
	#	HardwareLife/Lcd/Content/Screens \
#	HardwareLife/Lcd/Content/Widgets \
#	HardwareLife/Lcd/Content \
#	HardwareLife/Lcd \
	#HardwareLife/JsonFileSystem \
	#HardwareLife/LibraryJson \

#COMPONENT_SRCDIRS := . \
#		
#	HardwareLife/Lcd/Backlight \
#	HardwareLife/Lcd/Content/Face \
#	HardwareLife/Lcd/Content/Line/TopLine \
#	HardwareLife/Lcd/Content/Line \
#	HardwareLife/Lcd/Content \
#	HardwareLife/Lcd \

	
COMPONENT_ADD_INCLUDEDIRS := .

COMPONENT_ADD_LDFLAGS = -Wl,--whole-archive -l$(COMPONENT_NAME) -Wl,--no-whole-archive

