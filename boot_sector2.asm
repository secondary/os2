mov al, 0x06
mov ah, 0x0e  ;BIOS scrolling teletype function
int 0x10


my character:
  db 'X'

jmp $

times 510-($-$$) db 0
dw 0xaa55
