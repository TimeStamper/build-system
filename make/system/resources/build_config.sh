#!/bin/bash

###
# Input arguments
#
executable_input="$1"
build_env_input="$2"
sources_input=("$3")
includes_input=("$4")
libraries_input=("$5")
cxx_input=("$6")
architecture_input=("$7")
linker_input=("$8")



###
# Global constants
#
Bold=$(tput bold)
Normal=$(tput sgr0)



WriteMainProperties() {
  declare -r executable="$1"
  declare -r build_env="$2"

  echo -e "${Bold}Executable\n"
  echo -e "\t${Bold}Name: ${Normal}$executable"
  echo -e "\t${Bold}Environment: ${Normal}$build_env"
}



###
# DESCRIPTION: Writes a list section, containing title and list elements.
# TYPE: Procedure
# PARAMETERS: (1) title - The title of the section.
#             (2) entry_list - The elements of the list to be printed.
#
WriteList() {
  declare -r title="$1"
  declare -a entry_list=("$2")

  echo -e "\n\n${Bold}$title\n${Normal}"

  for entry in ${entry_list[@]}; do
    echo -e "\t$entry"
  done
}



WriteMainProperties "$executable_input" "$build_env_input"
WriteList "Sources" "${sources_input[@]}"
WriteList "Includes" "${includes_input[@]}"
WriteList "Libraries" "${libraries_input[@]}"
WriteList "C++ Flags" "${cxx_input[@]}"
WriteList "Architecture Flags" "${architecture_input[@]}"
WriteList "Linker Flags" "${linker_input[@]}"

