##
# Created: 01 august 2015
#  Author: Erik
#    File: recipes.mk
#    Info: Contains specific recipes for executing a x86 C++ targets.
#

#---------------------------------------------------------------------------------------------------
# NAME: execute-binary
# PARAMETERS: (1) = Executable eligible for execution
# DESCRIPTION: Executes a given binary file.
#
define execute-binary
	$(call print-command,"Executing $(patsubst $(DEV_BLD)%,\$$DEV_BLD%,$(1))")
	$(SILENT)$(CD) $(dir $(EXECUTABLE)); \
           $(EXECUTABLE)
endef


#---------------------------------------------------------------------------------------------------
