#!/bin/bash

set -e # Exit on first failed command

# Variables
OUTPUT_PATH=resources/strings

# Colors for echo
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'

# Create directory for output if it doesn't exist yet
if [ ! -d $OUTPUT_PATH ]
then
    mkdir $OUTPUT_PATH
fi

echo "${GREEN}Updating localization..."

# Converting locale files
echo "${YELLOW}Generating locale keys..."
dart run easy_localization:generate -S $OUTPUT_PATH
dart run easy_localization:generate -S $OUTPUT_PATH -f keys -o locale_keys.freezed.dart
echo "${GREEN}Update localization success!"

