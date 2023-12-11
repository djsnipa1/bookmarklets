#!/usr/bin/env bash 

function distFolders() {
  # Create an array of the subdirectories in pwd
  declare -a dirs=(*/)
  # Remove the trailing slashes from the directory names
  dirs=("${dirs[@]%/}")
  # Print the array
  # echo "${dirs[@]}"

  # Remove node_modules from the array
  dirs=( "${dirs[@]/node_modules}" )
}

distFolders

for dir in "${dirs[@]}"
  do
    # echo "The name of the folder is $dir"
    # Check if the dir variable is not empty
    if [[ -n $dir ]]; then
      # Check if the dist folder does not exist
      if [[ ! -d $dir/dist ]]; then
        mkdir $dir/dist
      fi
    fi
  done
