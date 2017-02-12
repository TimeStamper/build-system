##
# Created: 08 february 2017
#  Author: Erik
#    File: targets.mk
#    Info: Specifies the targets to be created during the process of building a Latex document.
#

#---------------------------------------------------------------------------------------------------
# Executable Definitions
#
executable_dir := $(DEV_BLD)/$(EXECUTABLE_PATH)
EXECUTABLE := $(executable_dir)/$(EXECUTABLE_NAME)


#---------------------------------------------------------------------------------------------------
# Target File Definitions
#
LATEX_AUX_FILES := $(addsuffix .aux, $(dir $(EXECUTABLE))$(basename $(EXECUTABLE_NAME)))

LATEX_LOG_FILES := $(addsuffix .log, $(dir $(EXECUTABLE))$(basename $(EXECUTABLE_NAME)))

LATEX_TOC_FILES := $(addsuffix .toc, $(dir $(EXECUTABLE))$(basename $(EXECUTABLE_NAME)))

#---------------------------------------------------------------------------------------------------
