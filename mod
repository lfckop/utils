#!/bin/bash
# Usage: mod $dividend $divisor
# Example: mod 20 8  
# and it will output: 20 / 8 = 2 ... 4
# created by zhouwei on 2023-06-16

if [[ $# != 2 ]]; then
    echo 'Usage: mod $dividend $divisor'
    echo 'Example: mod 20 8'
    echo 'and it will output: 20 / 8 = 2 ... 4'
    exit 1
fi

a=$1
b=$2

m=$((a / b))

r=$((a - b * m))

echo "$a / $b = $m ... $r"

exit 0
