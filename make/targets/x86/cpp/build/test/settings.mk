##
# Created: 01 august 2015
#  Author: Erik
#    File: settings.mk
#    Info: Contains specific settings of tools and tool chains etc. needed to build a x86 C++
#          test application.
#

#---------------------------------------------------------------------------------------------------
# Build Flags Definitions
#
CXX_FLAGS := \
  -pthread \
  $(CXX_FLAGS) \
  #


AR_FLAGS := \
  -rv \
  $(AR_FLAGS) \
  #

#---------------------------------------------------------------------------------------------------
