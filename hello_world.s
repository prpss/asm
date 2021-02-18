; testing out assembly language
; nasm -f macho64 hello_world.o hello_world.s && ld -macosx_version_min 10.7.0 -lSystem -o hello_world  hello_world.o && ./hello_world

global start


section .text

start:
    ; start syscall
    mov     rax, 0x2000004
    mov     rdi, 1
    mov     rsi, msg
    mov     rdx, len
    syscall

    ; exit syscall
    mov     rax, 0x2000001
    mov     rdi, 0
    syscall


section .data

msg:    db      "heya", 10
len:   equ     $ - msg
