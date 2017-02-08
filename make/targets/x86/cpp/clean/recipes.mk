##
# Created: 01 august 2015
#  Author: Erik
#    File: recipes.mk
#    Info: Contains specific recipes for cleaning a x86 C++ targets.
#

#---------------------------------------------------------------------------------------------------
# NAME: clean-builds
# PARAMETERS: None.
# DESCRIPTION: Cleans all built targets for the given executable.
#
define clean-builds
  $(call print-command,"Removing executable$(COMMA) object and dependency files")
  $(SILENT)for object_file in $(OBJECT_FILES); do \
             $(CD) `dirname $$object_file`; \
             $(RM) $$object_file; \
           done
  $(SILENT)for dependency_file in $(DEPENDENCY_FILES); do \
             $(CD) `dirname $$dependency_file`; \
             $(RM) $$dependency_file; \
           done
  $(SILENT)$(CD) $(dir $(EXECUTABLE)); $(RM) $(EXECUTABLE)
endef


#---------------------------------------------------------------------------------------------------
