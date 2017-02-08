##
# Created: 12 juni 2016
#  Author: Erik
#    File: prerequisites.mk
#    Info: Specifies the prerequisites needed for building a x86 C++ test application.
#


#---------------------------------------------------------------------------------------------------
# Source Definitions
#
specific_test_files := $(filter $(CURRENT_DIR)%,$(TEST_FILES))

APPLICATION_SOURCE_FILES := \
  $(specific_test_files) \
  $(APPLICATION_SOURCE_FILES) \
  #

#---------------------------------------------------------------------------------------------------
