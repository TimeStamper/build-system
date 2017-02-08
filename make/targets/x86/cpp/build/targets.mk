##
# Created: 26 juli 2015
#  Author: Erik
#    File: targets.mk
#    Info: Specifies the targets to be created during the process of building a x86 C++ application.
#

#---------------------------------------------------------------------------------------------------
# Target File Definitions
#
DEPENDENCY_FILES := $(addsuffix .d,\
                               $(basename $(patsubst $(DEV_SRC)%,\
                                                     $(DEV_BLD)%,\
                                                     $(APPLICATION_SOURCE_FILES))))

OBJECT_FILES := $(addsuffix .o,\
                            $(basename $(patsubst $(DEV_SRC)%,\
                                                  $(DEV_BLD)%,\
                                                  $(APPLICATION_SOURCE_FILES))))


#---------------------------------------------------------------------------------------------------
# Executable Definitions
#
executable_dir := $(DEV_BLD)/$(EXECUTABLE_PATH)
EXECUTABLE := $(executable_dir)/$(EXECUTABLE_NAME)

#---------------------------------------------------------------------------------------------------
