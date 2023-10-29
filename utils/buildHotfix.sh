#!/bin/sh
if [ "$1" == "universal" ] ; then
    DEVICES=$(echo "ALL" | python utils/parseKindleToolDevices.py)
else
    DEVICES=$(./utils/kindletool convert update_kindle*.bin --info -k 2>&1 | python utils/parseKindleToolDevices.py)
fi
echo $DEVICES
cd newHotfix
export KT_WITH_UNKNOWN_DEVCODES=1
../utils/kindletool create ota2 $DEVICES -b FC04 -O . ../build/update_hotfix_languagebreak-$2.bin