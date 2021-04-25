global _ft_strcpy

section .text

_ft_strcpy:
        mov rax, 0
        mov rbx, 0
        ; mov r10, rdi                        ; сохранил значение в другой регистр
        ; mov r11, rsi                        ; сохранил значение в другой регистр
        ; mov r12, 0                          ; счетчик цикла
        ; mov r13, 0                          ; регистр для символа 1 строки
        ; mov r14, 0                          ; регистр для символа 2 строки 

.loop:
    cmp byte[rsi + rax], 0                  ; если символ равен концу строки, то в return
        je .return
        
    mov bl, byte[rsi + rax]                ; char ch = str2[i]
    ; mov dil, byte[rdi + rax]                ; char ch2 = str1[i];

    mov byte[rdi + rax], bl                            ; приравниваю str1[i] = str2[i]
    ; mov r13, byte[r10 + r12]                ; приравниваю символ char ch = str1[i]
    ; mov r14, rsi + r12                      ; приравниваю символ char ch = str2[i]
    inc rax                                 ; увеличиваю счетчик
    jmp .loop                               ; прыгаю снова в начало

.return:
        ; mov byte[rdi + rax], 0              ; ставлю в конец строки, символ конца строки
        mov rax, rdi                           ; возвращаемое значение равно dst
        ret                                 ; return