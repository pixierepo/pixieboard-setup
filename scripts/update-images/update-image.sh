(echo d; echo 2; echo n; echo p; echo 2; echo 139264; echo  ; echo w) | fdisk /dev/mmcblk3
resize2fs /dev/mmcblk3p2
mount /dev/mmcblk3p2 /mnt
mount /dev/mmcblk3p1 /mnt/boot

cp update-clean.sh /mnt/
arch-chroot /mnt /bin/bash -c "./update-clean.sh"
rm /mnt/update-clean.sh

umount /mnt/boot
umount /mnt
fsck -fy /dev/mmcblk3p2
resize2fs -M /dev/mmcblk3p2
fsck -fy /dev/mmcblk3p2
fdisk /dev/mmcblk3
fsck -fy /dev/mmcblk3p2
zerofree /dev/mmcblk3p2 -v
fdisk -l /dev/mmcblk3

