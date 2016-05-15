##
# Created: 26 juli 2015
#  Author: Erik
#    File: recipes.mk
#    Info: Contains specific recipes for building x86 C++ targets.
#

#---------------------------------------------------------------------------------------------------
# NAME: generate-dependency-file
# PARAMETERS: (1) = Dependency file to be created by the operation.
#             (2) = File used as source of the operation.
#             (3) = Libraries to be used for operation.
# DESCRIPTION: Compiles an object file from a given source file.
#
define generate-dependency-file
	$(call create-directory,$(dir $(1)))
	$(call print-command,"Generating dependency file $(patsubst $(DEV_SRC)%,\$$$$DEV_SRC%,$(1))")
	$(SILENT)$(CC) -M $(CXX_FLAGS) \
                      $(INCLUDES) \
                   -o $(1) \
                      $(2)
	$(SILENT)$(CP) $(1) $(1).tmp; \
             sed -e 's/#.*//' \
                 -e 's/^[^:]*: *//' \
                 -e 's/ *\\$$///' \
                 -e '/^$$// d' \
                 -e 's/$$// :/' < $(1) >> $(1); \
             $(RM) $(1).tmp
endef


#---------------------------------------------------------------------------------------------------
# NAME: compile-file
# PARAMETERS: (1) = Object file to be created by the compilation.
#             (2) = File used as source of the compilation.
#             (3) = Libraries to be used for compilation.
# DESCRIPTION: Compiles an object file from a given source file.
#
define compile-file
	$(call create-directory,$(dir $(1)))
	$(call print-command,"Compiling $(patsubst $(DEV_SRC)%,\$$$$DEV_SRC%,$(2))")
	$(SILENT)$(CC) -c $(2) \
                      $(INCLUDES) \
                      $(3) \
                      $(CXX_FLAGS) \
                   -o $(1)
endef


#---------------------------------------------------------------------------------------------------
# NAME: build-executable
# PARAMETERS: None.
# DESCRIPTION: Builds an executable from the given object files.
#
define build-executable
  $(call print-command,"Linking executable $(patsubst $(DEV_BLD)%,\$$DEV_BLD%,$(strip $(EXECUTABLE)))")
  $(SILENT)$(LD) -o $(EXECUTABLE) \
                    $(START_GROUP) \
                    $(LIBRARIES) \
                    $(OBJECT_FILES) \
                    $(LD_FLAGS) \
                    $(END_GROUP)
endef

#---------------------------------------------------------------------------------------------------
