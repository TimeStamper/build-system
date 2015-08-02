##
# Created: 26 juli 2015
#  Author: Erik
#    File: prerequisites.mk
#    Info: Specifies the prerequisites needed for building a x86 C++ test application.
#

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
  $(INCLUDES) \
  #

#---------------------------------------------------------------------------------------------------
