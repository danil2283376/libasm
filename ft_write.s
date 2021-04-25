global _ft_write
extern __error

section .text

_ft_write:
        mov r10, rdx                    ; запоминаю параметр длины в ненужный регистр
        mov rax, 0x2000004              ; rax приравниваю rax 4 вызов это write
        syscall                         ; syscall обрабатывает rax, в котором записан 4 вызов
        jc __error                       ; если syscall == 1, то залетаем  error
        mov rax, r10                    ; возвращаемому значению присваеваем кол-во выведенных элементов
        ret
__error:                                 ; в случае ошибки
        mov rax, -1                     ; rax = -1
        ; call __error                    ; записыаю ошибку в errno
        ret                             ; возвращаем rax, который = -1
    