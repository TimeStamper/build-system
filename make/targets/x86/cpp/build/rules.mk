##
# Created: 26 juli 2015
#  Author: Erik
#    File: rules.mk
#    Info: Contains all necessary rules to build a x86 C++ application.
#

#---------------------------------------------------------------------------------------------------
# Phony Rules Definitions
#
.PHONY: x86-config


#---------------------------------------------------------------------------------------------------
# Public Rules Definitions
#
x86-build : $(EXECUTABLE)

x86-config :
	$(call display-config)


#---------------------------------------------------------------------------------------------------
# Private Rule Meta Method Definitions
#

##
# NAME: prepare-dependency-generation
# PARAMETERS: (1) = Dependency file to be created by the operation.
#             (2) = File used as source of the operation.
# DESCRIPTION: Prepares the generation of dependency files by explicitly specifying the exact
#              dependencies between the dependency file to be created and its source.
#
define prepare-dependency-generation
$(1) : $(2)
	$(call generate-dependency-file,$(1),$(2))
endef

##
# NAME: prepare-compilation
# PARAMETERS: (1) = Object file to be created by the compilation.
#             (2) = File used as source of the compilation.
#             (3) = Libraries to be used for compilation.
# DESCRIPTION: Prepares the compilation of object files by explicitly specifying the exact
#              dependencies between the object file to be created and its source.
#
define prepare-compilation
$(1) : $(2)
	$(call compile-file,$(1),$(2),$(3))
endef


#---------------------------------------------------------------------------------------------------
# Private Rules Definitions
#
$(EXECUTABLE) : $(DEPENDECY_FILES) $(OBJECT_FILES)
	$(call build-executable)

$(foreach dependency_file,\
          $(APPLICATION_SOURCE_FILES),\
          $(eval $(call prepare-dependency-generation,$(addsuffix .d,\
                                                                  $(basename $(patsubst $(DEV_SRC)%,\
                                                                                        $(DEV_BLD)%,\
                                                                                        $(dependency_file)))),\
                                                      $(dependency_file))))

$(foreach source_file,\
          $(APPLICATION_SOURCE_FILES),\
          $(eval $(call prepare-compilation,$(addsuffix .o,\
                                                        $(basename $(patsubst $(DEV_SRC)%,\
                                                                              $(DEV_BLD)%,\
                                                                              $(source_file)))),\
                                            $(source_file), \
                                            $(filter-out $(MOCK_FRAMEWORK),$(LIBRARIES)))))

#---------------------------------------------------------------------------------------------------
