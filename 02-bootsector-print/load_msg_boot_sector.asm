mov ah, 0x0e ; tty mode

mov al, 'G'

int 0x10

mov al, 'B'

int 0x10

mov al, 'T'

int 0x10

mov al, 'O'

int 0x10

int 0x10 ; 'O' is still on al, remember?

mov al, 'S'

int 0x10



jmp $ ; jump to current address = infinite loop



; padding and magic number

times 510 - ($-$$) db 0

dw 0xaa55 
