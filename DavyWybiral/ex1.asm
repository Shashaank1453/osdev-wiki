global _start
section .data
    data db "Shashank learns OS from osdev.wiki", 0x80
    length equ $ - data
section .text
_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, data
    mov edx, length
    int 0x80
    mov eax, 1
    mov ebx, 0
    int 0x80