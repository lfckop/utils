#!/bin/bash
# command wrapper for bc, and make it easy to use
# created by zhouwei on 2016-2-16

if (($# < 1)); then
    echo "Usage: cl \"99.1*(88.6+77.7)\""
    echo "   or: cl 99.9k (equals: 99.9/1024)"
    echo "   or: cl 99.9m (equals: 99.9/1024/1024)"
    exit 1
fi

if [[ "$1" =~ ^[0-9\.]+(k|m){1}$ ]]; then
    p=$1
    p=${p/k/\/1024}
    p=${p/m/\/(1024*1024)}
    echo "scale=20;$p" | bc
else
    echo "scale=20;$@" | bc
fi

exit 0
