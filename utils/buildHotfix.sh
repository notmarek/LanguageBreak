DEVICES=$(./utils/kindletool convert update_kindle*.bin --info -k 2>&1 | python utils/parseKindleToolDevices.py)
cp utils/install-languagebreak-cleanup.sh newHotfix
cd newHotfix
../utils/kindletool create ota2 $DEVICES -b FC04 . ../build/update_hotfix_languagebreak.bin