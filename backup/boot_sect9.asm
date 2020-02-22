[org 0x7c00]
mov bp, 0x9000
mov sp, bp

mov bx, MSG_REAL_MODE
call print
call switch_to_pm
mov ebx, MSG_INFIL
call print_string_pm



%include "boot_sect5_print.asm"
%include "boot_sect8_gdt.asm"
%include "boot_sect7_32p.asm"
%include "boot_sect9_32s.asm"

[bits 32]
BEGIN_PM:
    mov ebx, MSG_PROT_MODE
    call print_string_pm
    mov ebx, MSG_INFIL
    call print_string_pm
    jmp $
MSG_REAL_MODE db "GBT B16 Mode (16-bit) Real Mode", 0
MSG_PROT_MODE db "GBT B32 Mode (32-bit) Protected Mode", 0
MSG_INFIL db "Infinite Loop Time!"
times 510-($-$$) db 0
dw 0xaa55
