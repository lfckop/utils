#!/bin/bash
# command wrapper for bc, and make it easy to use
# created by zhouwei on 2016-02-16

if (($# < 1)); then
    echo "Usage: cl \"99.1*(88.6+77.7)\""
    echo "   or: cl 99.9/k (equals: 'cl 99.9/1024')"
    echo "   or: cl 99.9/m (equals: 'cl 99.9/1024/1024')"
    exit 1
fi

p="$@"
p=$(echo "$p" | sed 's/,//g')

if [[ "$p" =~ ^.+/(k|m){1}$ ]]; then
    p=${p/k/1024}
    p=${p/m/(1024*1024)}
    echo "scale=20;$p" | bc
else
    echo "scale=20;$p" | bc
fi

exit 0
