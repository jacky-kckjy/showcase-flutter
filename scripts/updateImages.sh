#!/bin/bash

# Variables
TARGET_PATH="resources/images"
OUTPUT_PATH="lib/generated"

# Colors for echo
GREEN='\033[1;32m'
YELLOW='\033[1;33m'

# Create directory for output if it doesn't exist yet
if [ ! -d "$OUTPUT_PATH" ]
then
    mkdir "$OUTPUT_PATH"
fi

# Create directory for output if it doesn't exist yet
if [ ! -d "$TARGET_PATH" ]
then
    mkdir "$TARGET_PATH"
fi

echo "${GREEN}Updating images references..."

echo "${YELLOW}Reading image files..."
content=""
for d in $TARGET_PATH/* ; do
  fileName=$(basename "$d")

  # extract the file name
  # image_home.svg -> home
  replace=""
  newFileName="${fileName//".png"/$replace}"
  newFileName="${newFileName//".jpg"/$replace}"
  newFileName="${newFileName//".jpeg"/$replace}"
  newFileName="${newFileName//"image_"/$replace}"

  # variable name of the image
  # convert to camel case
  imageName=$(echo "$newFileName" | awk -F _ '{printf "%s", $1; for(i=2; i<=NF; i++) printf "%s", toupper(substr($i,1,1)) substr($i,2); print"";}')
  # append to main content of the file
  content="${content}\n\tstatic String $imageName = \"\$_path/$fileName\";"
done

# write content to the file
result="class ImageKeys {\n\n\tstatic const String _path = \"${TARGET_PATH}\";\n${content}\n}"
echo "$result" > "${OUTPUT_PATH}/"image_keys.g.dart
echo "${GREEN}All done! File generated in ${OUTPUT_PATH}/image_keys.freezed.dart"
echo "${GREEN}Update images references success!"

