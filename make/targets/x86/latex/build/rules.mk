##
# Created: 08 february 2017
#  Author: Erik
#    File: rules.mk
#    Info: Contains all necessary rules to build a Latex document.
#

#---------------------------------------------------------------------------------------------------
# Phony Rules Definitions
#
.PHONY: latex-pdf-build \
        latex-pdf-read \
        latex-pdf-clean


#---------------------------------------------------------------------------------------------------
# Public Rules Definitions
#
latex-pdf-build : $(EXECUTABLE)

latex-pdf-read : $(EXECUTABLE)
	$(call open-latex-pdf, $(EXECUTABLE))

latex-pdf-clean :
	$(call remove-latex-pdf-artifacts, $(EXECUTABLE)\
                                     $(LATEX_AUX_FILES)\
                                     $(LATEX_LOG_FILES)\
                                     $(LATEX_TOC_FILES))


#---------------------------------------------------------------------------------------------------
# Private Rules Definitions
#
$(EXECUTABLE) : $(LATEX_SOURCE_FILES)
	$(call generate-latex-pdf, $(dir $(EXECUTABLE)), $(LATEX_SOURCE_FILES))


#---------------------------------------------------------------------------------------------------
