##
# Created: 26 juli 2015
#  Author: Erik
#    File: common_functions.mk
#    Info: Specifies general functions and methods used throughout the build system by different
#          targets.
#

#---------------------------------------------------------------------------------------------------
# NAME: check-variable-definition
# PARAMETERS: (1) = Dedicated variable to be checked.
#             (2) = User specified error message.
# DESCRIPTION: Checks if the dedicated variable is previously and correctly defined. If not, an
#              error is thrown, with an appropriate error message.
#
define check-variable-definition
  $(if $(strip $(1)),,$(error $(2)))
endef


#---------------------------------------------------------------------------------------------------
# NAME: validate-variable-definition
# PARAMETERS: (1) = Set of variables to be validated.
#             (2) = User specified error message.
# DESCRIPTION: Checks if the variables, sent as inputs, are previously and correctly defined. If
#              not, an error is thrown, with an appropriate error message.
#
define validate-variable-definition
  $(if $(strip $(1)),,$(call check-variable-definition,$(1),$(2)),\
  $(foreach variable,$(1),$(call check-variable-definition,$(variable),$(2))))
endef

#---------------------------------------------------------------------------------------------------
# NAME: create-directory
# PARAMETERS: (1) = The absolut path name of the directory to be created. 
# DESCRIPTION: Checks if a specific directory exists and, if not, creates it.
#
define create-directory
  $(SILENT)if [ ! -d "$(1)" ]; then \
             mkdir -p $(1); \
           fi
endef


#---------------------------------------------------------------------------------------------------
# NAME: print-command
# PARAMETERS: (1) = The string to be printed.
# DESCRIPTION: Outputs a string to stdout formatted as a command output.
#
define print-command
  $(SILENT)$(PRINT) $(COMMAND_FORMATTER) $(COMMAND_PREFIX) $(1)
endef

#---------------------------------------------------------------------------------------------------
