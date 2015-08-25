[org  0x7c00]

mov bp, 0x8000
mov sp, bp

mov al, 'X'
jmp print_char

print_char2:
 mov al, 'Y'
 jmp print_char

print_char:
  mov ah, 0x0e
  int 0x10
  jmp print_char2
jmp $

times 510-($-$$) db 0
dw 0xaa55
