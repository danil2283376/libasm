global _ft_strcmp

section .text

_ft_strcmp:
        mov rax, 0
        mov rbx, 0
        mov r10, 0

loop:
    mov al, byte[rdi + r10]
    mov bl, byte[rsi + r10]
    cmp al, 0
        je return_subtraction
    cmp bl, 0
        je return_subtraction
    inc r10
    cmp al, bl
        je loop
return_subtraction:
        sub rax, rbx
        ret
