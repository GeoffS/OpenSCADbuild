#!/bin/bash

if [ -z "$1" ] ; then
  echo "Usage: $0 file.scad"
  exit 1
fi

./makeStlQualityParams.sh 5 0.5 "$1"
