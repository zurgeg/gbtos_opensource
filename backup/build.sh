nasm -f bin $0 -o $1
qemu-system-x86_64 $1 -boot c