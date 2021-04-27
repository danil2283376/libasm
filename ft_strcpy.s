global _ft_strcpy

section .text

_ft_strcpy:
        mov rax, 0                         ;
        mov rbx, 0

.loop:
    cmp byte[rsi + rax], 0                 ; если символ равен концу строки, то в return
        je .return       
    mov bl, byte[rsi + rax]                ; char ch = str2[i]
    mov byte[rdi + rax], bl                ; приравниваю str1[i] = str2[i]
    inc rax                                ; увеличиваю счетчик
    jmp .loop                              ; прыгаю снова в начало

.return:
        mov byte[rdi + rax], 0             ; ставлю в конец строки \0
        mov rax, rdi                       ; возвращаемое значение равно dst
        ret                                ; return