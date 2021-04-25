section .text
        global _ft_strdup            ; делаем глобально ft_strdup
        extern _ft_strlen            ; подключаем наш strlen
        extern _ft_strcpy            ; подключаем наш strcpy
        extern _malloc               ; подключаем malloc

_ft_strdup:
        call _ft_strlen              ; rdi попадает в ft_strlen
        add  rax, 1                  ; добавляем байт в rax, под \0
        push rdi                     ; сохраняем строчку на стеке
        mov  rdi, rax                ; ft_strlen, записывает длину в rax
        call _malloc                 ; вызов malloc с длиной rax
        pop  rdi                     ; возвращаем строчку со стека
        mov  rsi, rdi                ; строку кидаем в dst
        mov  rdi, rax                ; dst кидаем выделеную память
        call _ft_strcpy              ; вызываем ft_strcpy
        ret                          ; возвращаем dst от ft_strcpy