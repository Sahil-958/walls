#!/bin/bash

walls=$(find "${1}" -type f)
for wall in $walls
do
    basename=$(basename "$wall" | cut -f1 -d'.')
    capitalized_basename="${basename^}"
    echo "|![$wall]($wall)|$capitalized_basename|"
done

