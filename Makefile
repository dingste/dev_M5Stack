#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := dev_M5Stack
PROJECT_DIR = ${CURDIR}
#/home/dieter/Develop/oxypoint-am/Microprocessors/MicroprocessorESP

CFLAGS		?= -std=gnu99 -Os -Wall
CXXFLAGS += -DDEBUG -O1 -g -std=gnu++11 -Wall
EXTRA_CFLAGS += --save-temps

# IDF_PATH=$(PROJECT_DIR)/../../esp-idf
include $(IDF_PATH)/make/project.mk

