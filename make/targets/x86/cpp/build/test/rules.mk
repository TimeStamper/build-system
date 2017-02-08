##
# Created: 01 august 2015
#  Author: Erik
#    File: rules.mk
#    Info: Contains all necessary rules to build a x86 C++ test application.
#

#---------------------------------------------------------------------------------------------------
# Public Rules Definitions
#
mock : $(MOCK_FRAMEWORK)


#---------------------------------------------------------------------------------------------------
# Private Rules Definitions
#
$(MOCK_FRAMEWORK) : $(MOCK_FRAMEWORK_OBJECT_FILES) $(TEST_FRAMEWORK_OBJECT_FILES)
	$(call build-mock-library)


$(foreach source_file,\
          $(MOCK_FRAMEWORK_SOURCE_FILES),\
          $(eval $(call prepare-compilation,$(DEV_DIR)/$(MOCK_FRAMEWORK_LIB_PATH)/$(addsuffix .o,\
                                                                                              $(basename \
                                                                                              $(notdir $(source_file)))),\
                                                                                              $(source_file),\
                                                                                              $(filter-out $(MOCK_FRAMEWORK),$(LIBRARIES)))))

$(foreach source_file,\
          $(TEST_FRAMEWORK_SOURCE_FILES),\
          $(eval $(call prepare-compilation,$(DEV_DIR)/$(TEST_FRAMEWORK_LIB_PATH)/$(addsuffix .o,\
                                                                                              $(basename \
                                                                                              $(notdir $(source_file)))),\
                                                                                              $(source_file),\
                                                                                              $(filter-out $(MOCK_FRAMEWORK),$(LIBRARIES)))))


#---------------------------------------------------------------------------------------------------
