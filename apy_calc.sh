#!/bin/bash
# APY: annual percentage yield 年化收益率（365天）

if [[ $# != 3 ]]; then
    echo "Usage: $0 base(w) days earn"
    echo "Example: $0 1 2 3"
    echo "Output: 1万元本金2天的收益为3元，则年化(365天)收益率: 5.475%"
    exit 1
fi

base=$1
days=$2
earn=$3

earnperday=$(cl $earn/$base/$days)
apy=$(cl $earnperday*3.65)

echo "${base}万元本金${days}天的收益为${earn}元，则年化(365天)收益率: ${apy}%"
echo "即1万元本金每天的收益为(元): ${earnperday}"

exit 0
