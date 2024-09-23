#!/bin/bash

cd "$(dirname -- "${BASH_SOURCE[0]}")" || exit

YELLOW='\033[1;33m'
RED='\033[1;31m'
BLACK='\033[0;30m'

while getopts p:m: flag
do
    case "${flag}" in
        p) platform="${OPTARG}";;
        m) method="${OPTARG}";;
        *) ;;
    esac
done

# shellcheck disable=SC2091
yes Y | $(rm -r ../outputs)
mkdir -p ../outputs;

yes Y | $(rm -r ../build/app/outputs)
mkdir -p ../build/app/outputs;

yes Y | $(rm -r ../build/ios/ipa)
mkdir -p ../build/ios/ipa;

# android
if [ "$platform" == "android" ] || [ -z "$platform" ]
then

  target="lib/main.dart"

  cd ../
  first_file=$(ls -t flutter_*.sksl.json | head -1)
  if [ ! -f "$first_file" ]
  then
    cd "$(dirname -- "${BASH_SOURCE[0]}")" || exit
    echo "${YELLOW}File 'sksl.json' not found"
    echo "Press 'M' (Shift + M) to generate the file after the app is built${BLACK}"
    # run the app
    flutter run --cache-sksl --purge-persistent-cache --profile -t $target
    exit
  else
    output=$method;
    if [ -z "$method" ]
    then
      output="apk" # or appbundle
    fi
    flutter build $output --bundle-sksl-path $first_file -t $target --release
    if [ $output == "apk" ]
    then
      FILE=$(find build/app/outputs/flutter-apk \( -name "*release.apk" \))
      mv "$FILE" outputs/
    else
      FILE=$(find build/app/outputs/bundle/release \( -name "*.aab" \))
      mv "$FILE" outputs/
    fi
  fi
fi

if [ "$platform" == "ios" ] || [ -z "$platform" ]
then
    output=$method;
    target="lib/main.dart"
    if [ -z "$method" ]
    then
       output="development"
    fi
    flutter build ipa --obfuscate --split-debug-info -t $target --release --export-method $output
    FILE=$(ls ../build/ios/ipa/*.ipa| head -1)
    mv "$FILE" ../outputs/"$flavor.ipa"
fi