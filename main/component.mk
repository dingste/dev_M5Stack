#
# Main Makefile. This is basically the same as a component makefile.
#
# (Uses default behaviour of compiling all source files in directory, adding 'include' to include path.)

COMPONENT_SRCDIRS := . \
	HardwareLife/TransportAbstraction \
	HardwareLife/Uart \
        u8g2-esp-idf \
	HardwareLife/OLED \
	HardwareLife/Gpio/Kiss \
	HardwareLife/Gpio \
	HardwareLife/WiFi/esp32-wifi-manager/src \
	HardwareLife/WiFi \
	HardwareLife/Key \
	HardwareLife \
	LifeCycle \
	IdLife/Auth \
	IdLife \
	DataLife

#COMPONENT_SRCDIRS := . \
#		HardwareLife/OLED \
#	HardwareLife/Lcd/Backlight \
#	HardwareLife/Lcd/Content/Face \
#	HardwareLife/Lcd/Content/Line/TopLine \
#	HardwareLife/Lcd/Content/Line \
#	HardwareLife/Lcd/Content \
#	HardwareLife/Lcd \

	
COMPONENT_ADD_INCLUDEDIRS := .

COMPONENT_ADD_LDFLAGS = -Wl,--whole-archive -l$(COMPONENT_NAME) -Wl,--no-whole-archive

