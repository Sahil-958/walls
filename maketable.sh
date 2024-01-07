#!/bin/bash

walls=$(find ${1} -type f -regex ".*\.\(jpg\|jpeg\|png\|gif\|bmp\)" )
count=0

echo -e "| Wallpaper | Name |\n|-----------|------|"

IFS=$'\n'

for wall in $walls
do
    basename=$(basename "$wall" | cut -f1 -d'.')
    capitalized_basename="${basename^}"
    final_name=${capitalized_basename//[_-]/ }
    link=${wall// /%20}
    echo "|![$link]($link)|$final_name"
done


