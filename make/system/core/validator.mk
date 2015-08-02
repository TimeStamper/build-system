##
# Created: 26 juli 2015
#  Author: Erik
#    File: validator.mk
#    Info: Responsible for assessing the validity of the incoming command from the client. That is,
#          checks that all necessary variables have been defined for the respective command. If
#          any inconsistencies are found, an error will be thrown.
#

#---------------------------------------------------------------------------------------------------
# Environment Variables
#
DEV_DIR := $(shell echo $$DEV_DIR)

$(call validate-variable-definition, $(DEV_DIR), $$DEV_DIR is not set)

DEV_SRC := $(shell echo $$DEV_SRC)
DEV_GEN := $(shell echo $$DEV_GEN)
DEV_BLD := $(shell echo $$DEV_BLD)

$(call validate-variable-definition, $(DEV_SRC), $$DEV_SRC is not set)
$(call check-variable-definition, $(DEV_GEN), $$DEV_GEN is not set)
$(call validate-variable-definition, $(DEV_BLD), $$DEV_BLD is not set)

#---------------------------------------------------------------------------------------------------
# User Specified Variables
#
$(call validate-variable-definition, $(EXECUTABLE_NAME), Executable name is not set)
$(call validate-variable-definition, $(EXECUTABLE_PATH), Executable path is not set)
$(call validate-variable-definition, $(TARGET_ENVIRONMENT), Target environment is not set)
$(call validate-variable-definition, $(SOURCE_LANGUAGE), Source language is not set)
$(call validate-variable-definition, $(TARGET_TYPE), Target type is not set)

#---------------------------------------------------------------------------------------------------
