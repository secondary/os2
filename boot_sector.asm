;loop:
;  jmp loop ;

;db 0x12
;db 0x34
;db 0x56
;db 'Hello'

;general register ax, bx, cx, dx

;loop:

;[org 0x7c00]

;mov [0x40], word 0x0

mov ah, 0x0e ; BIOS scrolling teletype function
;mov al, 'H'
;mov al, [my_character]
int 0x10

;mov al, [my_character2]
;int 0x10

my_character:
 db 'X'
my_character2:
 db 'Y'
;jmp loop

times 510-($-$$) db 0
dw 0xaa55
