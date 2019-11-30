mov ah, 0x0e



; attempt 3

; Add the BIOS starting offset 0x7c00 to the memory address of the X

; and then dereference the contents of that pointer.

; We need the help of a different register 'bx' because 'mov al, [ax]' is illegal.


mov al, "3"

int 0x10

mov bx, the_secret

add bx, 0x7c00

mov al, [bx]

int 0x10








jmp $ ; infinite loop



the_secret:

    ; ASCII code 0x58 ('X') is stored just before the zero-padding.

    ; On this code that is at byte 0x2d (check it out using 'xxd file.bin')

    db "X"



; zero padding and magic bios number

times 510-($-$$) db 0

dw 0xaa55
