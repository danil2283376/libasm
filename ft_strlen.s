global _ft_strlen

section .text

_ft_strlen:
        mov rax, -1          ; зануляю
        
loop:
    inc rax                  ; инкрементирую rax
    cmp byte[rdi + rax], 0   ; сверяю символ с концом строки
    jne loop                 ; если не равны символы прыгаем снова на метку
    ret