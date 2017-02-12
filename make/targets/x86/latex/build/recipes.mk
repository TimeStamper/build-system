##
# Created: 08 february 2017
#  Author: Erik
#    File: recipes.mk
#    Info: Contains specific recipes for building a Latex document.
#

#---------------------------------------------------------------------------------------------------
# NAME: generate-latex-pdf
# PARAMETERS: (1) = Output directory where Latex PDF document shall be created.
#             (2) = Latex file used as source of the operation.
# DESCRIPTION: Generates a PDF document from a Latex source file.
#
define generate-latex-pdf
	$(call print-command,"Generating PDF document from $(patsubst $(DEV_SRC)%,\$$DEV_SRC%,$(2))")
	$(call create-directory, $(1))
	$(SILENT)$(CD) $(dir $(2)) && \
           $(LATEX_TO_PDF) $(TARGET_DIRECTORY_OPTION)="$(strip $(1))" $(notdir $(2))
endef


#---------------------------------------------------------------------------------------------------
# NAME: open-latex-pdf
# PARAMETERS: (1) = Latex PDF document to be opened.
# DESCRIPTION: Opens a generated Latex PDF document.
#
define open-latex-pdf
	$(call print-command,"Opening PDF document $(patsubst $(DEV_BLD)%,\$$DEV_BLD%,$(1))")
	$(SILENT)$(CD) $(dir $(1)) && $(EVINCE) $(notdir $(1)) &
endef


#---------------------------------------------------------------------------------------------------
# NAME: remove-latex-pdf-artifacts
# PARAMETERS: (1) = List of Latex PDF artifacts to be removed.
# DESCRIPTION: Removes the previously generated Latex PDF document as well as other Latex generated
#              artifacts.
#
define remove-latex-pdf-artifacts
  $(foreach artifact,\
            $(1),\
            $(call print-command,\
                   "Deleting artifact $(patsubst $(DEV_BLD)%,\$$DEV_BLD%,$(artifact))"))
  $(SILENT)$(RM) $(1)
endef


#---------------------------------------------------------------------------------------------------
