##
# Created: 26 juli 2015
#  Author: Erik
#    File: prerequisites.mk
#    Info: Specifies the prerequisites needed for building a x86 C++ test application.
#


#---------------------------------------------------------------------------------------------------
# Path Definitions
#
MOCK_FRAMEWORK_PATH := sw/gmock/gmock-1.7.0
TEST_FRAMEWORK_PATH := $(MOCK_FRAMEWORK_PATH)/gtest
boost_root_path := sw/boost/boost_1_58_0


#---------------------------------------------------------------------------------------------------
# Source Definitions
#
APPLICATION_SOURCE_FILES := \
  $(SOURCE_FILES) \
  $(TEST_FILES) \
  #

TEST_FRAMEWORK_SOURCE_FILES := \
  $(DEV_DIR)/$(TEST_FRAMEWORK_PATH)/src/gtest-all.cc \
  $(TEST_FRAMEWORK_SOURCE_FILES) \
  #

MOCK_FRAMEWORK_SOURCE_FILES := \
  $(DEV_DIR)/$(MOCK_FRAMEWORK_PATH)/src/gmock-all.cc \
  $(MOCK_FRAMEWORK_SOURCE_FILES) \
  #

#---------------------------------------------------------------------------------------------------
# Mock Framework Includes Definitions
#
INCLUDES := \
  -isystem $(DEV_DIR)/$(TEST_FRAMEWORK_PATH)/include \
  -isystem $(DEV_DIR)/$(MOCK_FRAMEWORK_PATH)/include \
  -I$(DEV_DIR)/$(TEST_FRAMEWORK_PATH) \
  -I$(DEV_DIR)/$(MOCK_FRAMEWORK_PATH) \
  -I$(DEV_DIR)/$(boost_root_path) \
  $(INCLUDES) \
  #

#---------------------------------------------------------------------------------------------------
