#!/bin/sh

# Pull libOTAUtils for logging & progress handling
[ -f ./libotautils5 ] && source ./libotautils5


rm_if() {
    if [[ -e "${1}" ]]; then
        rm "${1}"
    fi
}

otautils_update_progressbar
logmsg "I" "install" "" "Removing JB files"
rm_if /mnt/us/jb
rm_if /DONT_CHECK_BATTERY
rm_if /mnt/us/documents/dictionaries
rm_if /mnt/us/uksPatched.sqsh

otautils_update_progressbar
logmsg "I" "install" "" "Disabling Demo Mode"   
rm_if /var/local/system/DEMO_MODE
rm_if /var/local/system/no_transitions

if [ -d /mnt/us/.demo ]; then
    rm -rf /mnt/us/.demo
fi

otautils_update_progressbar

return 0

