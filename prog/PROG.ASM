    .model small
    .stack 100
    .data
a   dd  10011001010110011111010100111100
    .code

    mov ax, @data
    mov ds, ax
    mov di, 0
@02:
    lea si, a
    xor bl,bl
    lodsb
    mov cx, 8
@03:rcl al,1
    rcr bl,1
    loop 03
    cmp bl,al

    add di, 1
    jnz @02
    push di
    pop ax
    mov ax, 4C00h
    int 21h
