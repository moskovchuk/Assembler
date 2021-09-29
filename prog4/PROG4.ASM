; Построить вещественное число, целая часть которого есть длина первого слова строки; каждая цифра в дробной части является длиной очередного слова строки.

    .model small
    .stack 100h
    .486
    .data

string db ?
count db ?

    .code
Start: 

    mov ax, @data
    mov ds, ax

    

    mov ax, 4c00h
    int 21h

end Start
