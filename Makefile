#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := projekt_ei
IDF_PATH=/home/dieter/Development/esp-idf
CFLAGS		?= -std=gnu99 -Os -Wall
CXXFLAGS += -DDEBUG -Os -g -std=gnu++11 -Wall
EXTRA_CFLAGS += --save-temps
include $(IDF_PATH)/make/project.mk

