##
# Created: 01 august 2015
#  Author: Erik
#    File: rules.mk
#    Info: Contains all necessary rules to execute a x86 C++ application.
#

#---------------------------------------------------------------------------------------------------
# Phony Rules Definitions
#
.PHONY : x86-execute


#---------------------------------------------------------------------------------------------------
# Public Rules Definitions
#
x86-execute : $(EXECUTABLE)
	$(call execute-binary,$(EXECUTABLE))


#---------------------------------------------------------------------------------------------------
