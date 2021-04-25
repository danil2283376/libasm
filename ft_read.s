global _ft_read

section .text

_ft_read:
        mov r10, rdx
        mov rax, 0x2000003
        syscall
        jc __error
        mov rax, r10
        ret
__error:
        mov rax, -1
        ; call __error                    ; записываю ошибку в errno
        ret