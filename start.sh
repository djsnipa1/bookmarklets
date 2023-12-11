#!/usr/bin/env bash

BOOKMARKLET="node_modules/.bin/bookmarklet"

function distFolders() {
  # Create an array of the subdirectories in pwd
  dirs=(*/)
  # Remove the trailing slashes from the directory names
  dirs=(${dirs[@]%/})
  # Print the array
  # echo ${dirs[@]}

  unset dirs[node_modules]

  for dir in ${dirs[@]}
  do
    # echo "The name of the folder is $dir"
    if ! [ -d $dir/dist ]; then
      mkdir $dir/dist
    fi
  done
}

distFolders

# This script checks for the existence of node_modules/.bin/bookmarklet and exits if not found

if [ -f $BOOKMARKLET ]; then
  # echo "${BOOKMARKLET} exists, continuing..."
  
  for dir in ${dirs[@]}
  do
     ./${BOOKMARKLET} $dir/index.js $dir/dist/bookmarklet.js && ./${BOOKMARKLET} -d $dir/index.js $dir/dist/index.html
  done
  
else
  # echo "${BOOKMARKLET} does not exist, installing.."
  
  if command -v pnpm >/dev/null 2>&1; then
    echo "pnpm is in the path, continuing..."
    pnpm install
  else
    echo "pnpm is not in the path, using npm..."
    npm install
  fi

  exit 1
fi



 
   
  
