#!/usr/bin/env bash

while [[ -d "/proc/$PPID" ]]; do
	sleep 1
done
[[ -e /boot/efi/EFI/arch ]] && (
    /usr/bin/cp -f /boot/vmlinuz-linux /boot/efi/EFI/arch/vmlinuz-linux.efi ;
    /usr/bin/cp -f /boot/initramfs-linux.img /boot/efi/EFI/arch/initramfs-linux.img ;
    /usr/bin/cp -f /boot/vmlinuz-linux-lts /boot/efi/EFI/arch/vmlinuz-linux-lts.efi ;
    /usr/bin/cp -f /boot/initramfs-linux-lts.img /boot/efi/EFI/arch/initramfs-linux-lts.img ;
#/usr/bin/cp -f /boot/initramfs-linux-fallback.img /boot/efi/EFI/arch/initramfs-linux-fallback.img ;
)
echo "Synced kernel with ESP"
