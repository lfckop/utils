#!/bin/bash
# command wrapper for bc, and make it easy to use
# created by zhouwei on 2016-02-16

if (($# < 1)); then
    echo "Usage: cl \"99.1*(88.6+77.7)\""
    echo "   or: cl  99.9/k (equals: 'cl 99.9/1024')"
    echo "   or: cl  99.9/m (equals: 'cl 99.9/1024/1024')"
    exit 1
fi

p="$@"

p=${p//,/}
p=${p//k/1024}
p=${p//m/1048576}
p=${p//g/1073741824}

result=$(echo "scale=20;$p" | bc)
echo $result

if echo $result | grep -F '.' >&/dev/null; then
    result=$(echo $result | sed -E 's/[0]{1,}$//g')
fi
echo $result | sed -E 's/\.$//g' | sed -E 's/^\./0\./g'

exit 0
