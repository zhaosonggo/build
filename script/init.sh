#!/bin/bash
current_dir=$(pwd)
script_dir=$(cd $(dirname $0); pwd)
gn_file=$current_dir/.gn
if [ -f "$gn_file" ]; then
    echo "$gn_file exist!"
    exit 1
fi
echo "# Copyright by zhaosonggo Authors. All rights reserved.
buildconfig = \"//build/BUILDCONFIG.gn\"" >> $gn_file