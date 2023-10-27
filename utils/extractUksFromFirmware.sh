rm -rf officialFirmware
./utils/kindletool extract update_kindle*.bin officialFirmware
gunzip officialFirmware/*rootfs*.img.gz
mkdir mnt
sudo mount -o loop officialFirmware/*rootfs*.img mnt
cp mnt/etc/uks.sqsh .
sudo umount mnt
rm -rf mnt
rm -rf officialFirmware