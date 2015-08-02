##
# Created: 01 august 2015
#  Author: Erik
#    File: recipes.mk
#    Info: Contains specific recipes for building x86 C++ targets.
#

#---------------------------------------------------------------------------------------------------
# NAME: build-mock-library
# PARAMETERS: (1) = Object file to be created by the compilation.
#             (2) = File used as source of the compilation.
# DESCRIPTION: Compiles an object file from a given source file.
#
define build-mock-library
	$(call create-directory,$(dir $(MOCK_FRAMEWORK)))
	$(call print-command,"Creating archive $(MOCK_FRAMEWORK)")
	$(SILENT)$(AR) $(AR_FLAGS) \
                 $(MOCK_FRAMEWORK) \
                 $(MOCK_FRAMEWORK_OBJECT_FILES) \
                 $(TEST_FRAMEWORK_OBJECT_FILES)
endef


#---------------------------------------------------------------------------------------------------
