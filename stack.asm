[org 0x7c00]

mov ah, 0x0e  ;BIOS scrolling teletype function
;mov al, 'X'
;mov [0x9000], byte 'A'
;mov al, [0x9000]

mov bp, 0x8000
mov sp, bp

push 'A'
push 'B'
push 'C'

mov al, [0x7ffc]
int 0x10

;pop bx
;mov al, bl
;int 0x10



;push 'B'
;pop bx
;mov al, bl
;int 0x10

;push 'C'
;pop bx
;mov al, bl
;int 0x10 ;print al

jmp $

times 510-($-$$) db 0
dw 0xaa55
