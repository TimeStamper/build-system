##
# Created: 01 august 2015
#  Author: Erik
#    File: settings.mk
#    Info: Contains specific settings of tools and tool chains etc. needed to build a x86 C++
#          test application.
#

#---------------------------------------------------------------------------------------------------
# Path Definitions
#
MOCK_FRAMEWORK_PATH := sw/gmock-1.7.0
TEST_FRAMEWORK_PATH := $(MOCK_FRAMEWORK_PATH)/gtest

#---------------------------------------------------------------------------------------------------
# Build Flags Definitions
#
CXX_FLAGS := \
  -pthread \
  $(CXX_FLAGS) \
  #


AR_FLAGS := \
  -rv \
  $(AR_FLAGS) \
  #

#---------------------------------------------------------------------------------------------------
