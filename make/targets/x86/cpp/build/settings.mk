##
# Created: 26 juli 2015
#  Author: Erik
#    File: settings.mk
#    Info: Contains specific settings of tools and tool chains etc. needed to build a x86 C++
#          application.
#

#---------------------------------------------------------------------------------------------------
# Library Definitions
#
LIBRARIES := \
  -lstdc++ \
  -lm \
  $(LIBRARIES) \
  #

#---------------------------------------------------------------------------------------------------
# Linking Definitions
#
START_GROUP := -Wl,--start-group
END_GROUP := -Wl,--end-group

#---------------------------------------------------------------------------------------------------
