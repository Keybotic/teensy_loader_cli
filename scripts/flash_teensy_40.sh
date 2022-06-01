#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage is $0 path_to_hex_file"
  exit 1
fi

hex_file=$1

ros2 run teensy_loader_cli teensy_loader_cli -v --mcu=TEENSY40 -s $hex_file
