if [ ! -f raspbian_latest ]; then
	wget https://downloads.raspberrypi.org/raspbian_latest
fi
qemu-system-x86_64 -kernel kernel-qemu -cpu arm1176 -m 256 -M versatilepb -hda raspbian-latest -append "root=/dev/sda2 rootfstype=ext4"
