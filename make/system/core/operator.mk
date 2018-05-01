##
# Created: 26 juli 2015
#  Author: Erik
#    File: operator.mk
#    Info: Main entry point for clients using the Make build system.
#

#---------------------------------------------------------------------------------------------------
# Path Definitions
#
include $(BLD_SYS_DIR)/make/system/core/path_definitions.mk


#---------------------------------------------------------------------------------------------------
# Build System Initialize
#
include $(BLD_SYS_DIR)/$(SYSTEM_COMMON_PATH)/settings.mk
include $(BLD_SYS_DIR)/$(SYSTEM_COMMON_PATH)/common_functions.mk


#---------------------------------------------------------------------------------------------------
# Entry Point Validation
#
include $(BLD_SYS_DIR)/$(SYSTEM_CORE_PATH)/validator.mk


#---------------------------------------------------------------------------------------------------
# Target Rule Forking
#
ifeq ($(TARGET_ENVIRONMENT),x86)

  ifeq ($(SOURCE_LANGUAGE),cpp)
    ifneq ($(filter %build,$(MAKECMDGOALS)),,)
      include $(BLD_SYS_DIR)/$(X86_CPP_BUILD_PATH)/operator.mk
      include $(BLD_SYS_DIR)/$(X86_CPP_CLEAN_PATH)/operator.mk
      include $(BLD_SYS_DIR)/$(X86_CPP_EXECUTE_PATH)/operator.mk
    endif
  endif

  ifeq ($(SOURCE_LANGUAGE),latex)
    include $(BLD_SYS_DIR)/$(X86_LATEX_BUILD_PATH)/operator.mk
  endif
endif

#---------------------------------------------------------------------------------------------------
