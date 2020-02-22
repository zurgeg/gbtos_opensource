[org 0x7c00]
mov bp, 0x8000
mov sp, bp ;Hmm, the stack you say?

mov bx, 0x09000
mov dh, 2

call disk_load

mov dx, [0x9000]
call print_hex

call print_nl


mov dx, [0x9000 + 512]
call print_hex

jmp $


%include "boot_sect5_print.asm"
%include "boot_sect5_hex.asm"
%include "boot_sect06_disk.asm"

times 510-($-$$) db 0
dw 0xaa55

times 256 dw 0xdada
times 256 dw 0xface
