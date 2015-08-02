##
# Created: 26 juli 2015
#  Author: Erik
#    File: operator.mk
#    Info: Entry point for x86 C++ build target.
#

#---------------------------------------------------------------------------------------------------
# Settings Definitions
#
include $(BLD_SYS_DIR)/$(X86_CPP_BUILD_PATH)/settings.mk

ifeq ($(TARGET_TYPE),$(TEST_TARGET_TYPE))
  include $(BLD_SYS_DIR)/$(X86_CPP_BUILD_PATH)/test/settings.mk
endif


#---------------------------------------------------------------------------------------------------
# Prerequisites Definitions
#
ifeq ($(TARGET_TYPE),$(TEST_TARGET_TYPE))
  include $(BLD_SYS_DIR)/$(X86_CPP_BUILD_PATH)/test/prerequisites.mk
endif

ifeq ($(TARGET_TYPE),$(RELEASE_TARGET_TYPE))
  include $(BLD_SYS_DIR)/$(X86_CPP_BUILD_PATH)/release/prerequisites.mk
endif


#---------------------------------------------------------------------------------------------------
# Targets Definitions
#
include $(BLD_SYS_DIR)/$(X86_CPP_BUILD_PATH)/targets.mk

ifeq ($(TARGET_TYPE),$(TEST_TARGET_TYPE))
include $(BLD_SYS_DIR)/$(X86_CPP_BUILD_PATH)/test/targets.mk
endif


#---------------------------------------------------------------------------------------------------
# Recipes Definitions
#
include $(BLD_SYS_DIR)/$(X86_CPP_BUILD_PATH)/recipes.mk

ifeq ($(TARGET_TYPE),$(TEST_TARGET_TYPE))
  include $(BLD_SYS_DIR)/$(X86_CPP_BUILD_PATH)/test/recipes.mk
endif


#---------------------------------------------------------------------------------------------------
# Rules Definitions
#
include $(BLD_SYS_DIR)/$(X86_CPP_BUILD_PATH)/rules.mk

ifeq ($(TARGET_TYPE),$(TEST_TARGET_TYPE))
include $(BLD_SYS_DIR)/$(X86_CPP_BUILD_PATH)/test/rules.mk
endif


#---------------------------------------------------------------------------------------------------
