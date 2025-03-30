#!/bin/bash
# loop execute the input shell file every 2 seconds
# Usage: $0 shell_file

if ! [[ -f $1 ]]; then
    echo "Usage: $0 shell_file"
    exit 1
fi

shell_file=$1

while true; do
    bash $shell_file
    sleep 2
done
