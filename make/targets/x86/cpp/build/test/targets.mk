##
# Created: 26 juli 2015
#  Author: Erik
#    File: targets.mk
#    Info: Specifies the targets to be created during the process of building a test x86 C++
#          application.
#

#---------------------------------------------------------------------------------------------------
# Path Definitions
#
MOCK_FRAMEWORK_LIB_PATH := $(MOCK_FRAMEWORK_PATH)/lib
TEST_FRAMEWORK_LIB_PATH := $(MOCK_FRAMEWORK_PATH)/lib


#---------------------------------------------------------------------------------------------------
# Framework Definitions
#
mock_framework_name := libgmock.a
MOCK_FRAMEWORK := $(DEV_DIR)/$(MOCK_FRAMEWORK_LIB_PATH)/$(mock_framework_name)


#---------------------------------------------------------------------------------------------------
# Target File Definitions
#
MOCK_FRAMEWORK_OBJECT_FILES := $(DEV_DIR)/$(MOCK_FRAMEWORK_LIB_PATH)/$(addsuffix .o,\
                                                                     $(basename \
                                                                     $(notdir $(MOCK_FRAMEWORK_SOURCE_FILES))))

TEST_FRAMEWORK_OBJECT_FILES := $(DEV_DIR)/$(TEST_FRAMEWORK_LIB_PATH)/$(addsuffix .o,\
                                                                     $(basename \
                                                                     $(notdir $(TEST_FRAMEWORK_SOURCE_FILES))))

LIBRARIES := \
  $(MOCK_FRAMEWORK) \
  $(LIBRARIES) \
  #

#---------------------------------------------------------------------------------------------------
