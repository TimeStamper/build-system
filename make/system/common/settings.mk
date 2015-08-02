##
# Created: 26 juli 2015
#  Author: Erik
#    File: settings.mk
#    Info: Specifies general variables and constants used throughout the build system.
#

#---------------------------------------------------------------------------------------------------
# General Tool Definitions.
#
AR := ar
CC := /usr/bin/g++
CD := cd
LD := $(CC)
PRINT := printf
RM := rm -f


#---------------------------------------------------------------------------------------------------
# Constant Definitions.
#
TEST_TARGET_TYPE := test
RELEASE_TARGET_TYPE := release


#---------------------------------------------------------------------------------------------------
# Variable Definitions.
#
ifndef VERBOSE
  SILENT := @
endif



#---------------------------------------------------------------------------------------------------
# Print Definitions.
#
COMMAND_PREFIX = ">> "
COMMAND_FORMATTER = "\e[94m\e[1m%-.3s \e[0m\e[1m%s\e[0m\n"

#---------------------------------------------------------------------------------------------------
