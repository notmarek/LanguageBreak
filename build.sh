rm -rf build
echo "extracting and mounting fw"
./utils/extractAndMountFw.sh &> /dev/null
echo "extracting uks.sqsh from official firmware"
./utils/extractUksFromFirmware.sh &> /dev/null
echo "patching uks.sqsh with the sexy pubdevkey01.pem"
./utils/patchUksSqsh.sh &> /dev/null
echo "extracting hotfix"
./utils/extractHotfix.sh &> /dev/null
rm -rf newHotfix
mkdir newHotfix
# echo "moving patched uks to the new hotfix"
# cp patchedUks.sqsh newHotfix
# echo "patching bridge in the new hotfix" # we don't need to patch it anymore
# $(patch originalHotfix/bridge < utils/bridge.patch) &> /dev/null
# $(patch originalHotfix/install-bridge.sh < utils/install-bridge.sh.patch) &> /dev/null
mv originalHotfix/* newHotfix
mkdir build
rm -rf originalHotfix
echo "building the new hotfix for the devices specified in the official firmware"
python ./utils/buildHotfixForAllLangs.py $1 &> /dev/null
./utils/unmountAndDeleteFw.sh
rm -rf newHotfix
echo "moving patched uks to LanguageBreak directory"
cp LanguageBreak build/ -r
cp README.MD build/
cp patchedUks.sqsh build/LanguageBreak
rm -rf patchedUks.sqsh
echo "done language break generated for:"
cat build/DEVICES.txt 
cd build
tar -czf ../LanguageBreak.tar.gz .
cd ..
rm -rf build/*
mv LanguageBreak.tar.gz build/