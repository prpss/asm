global start

section .text

 start:
    mov rax, 0x2000004
    mov rdi, 1
    mov rsi, num1
    mov rdx, num1.len
    syscall

    mov rax, 0x2000001
    mov rdi, 0
    syscall


section .data

    ; will show E
    num1: db 69, 10
    .len: equ $ - num1
