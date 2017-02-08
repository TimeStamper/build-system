##
# Created: 01 august 2015
#  Author: Erik
#    File: rules.mk
#    Info: Contains all necessary rules to clean a x86 C++ application.
#

#---------------------------------------------------------------------------------------------------
# Phony Rules Definitions
#
.PHONY : clean


#---------------------------------------------------------------------------------------------------
# Public Rules Definitions
#
clean :
	$(call clean-builds)


#---------------------------------------------------------------------------------------------------
