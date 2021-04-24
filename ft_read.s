; обработать ошибку и запихать ошибку в errno
global _ft_read

section .text

_ft_read:
        mov r10, rdx
        mov rax, 0x2000003
        syscall
        jc _error
        mov rax, r10
        ret
_error:
        mov rax, -1
        ret