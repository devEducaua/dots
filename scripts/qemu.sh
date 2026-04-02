
qemu-img create -f qcow2 haiku.qcow2

qemu-system-x86_64 --enable-kvm -m 2G -boot d -cdrom ~/dow/isos/haiku-r1beta5-x86_64-anyboot.iso
