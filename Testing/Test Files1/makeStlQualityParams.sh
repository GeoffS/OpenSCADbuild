#!/bin/bash

if [ -z "$1" ] ; then
  echo "Usage: $0 \$fa \$fs file.scad"
  exit 1
fi

#alias osc='/c/Program\ Files/openscad/openscad.exe'
alias osc='/c/Program\ Files/OpenSCAD-2019.05/openscad.exe'

scadFilename="$3"

baseFilename="${scadFilename%%.scad}"
build_fa="$1"
build_fs="$2"

echo "Exporting STL of '$baseFilename'"

SECONDS=0
/c/Program\ Files/openscad/openscad.exe \
    -o "../$baseFilename.stl" \
    -D "build_fa=$build_fa" \
    -D "build_fs=$build_fs" \
    -D 'developmentRender=false' \
    "$baseFilename.scad"
duration=$SECONDS
echo ""
echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."
date
echo "Done!"
