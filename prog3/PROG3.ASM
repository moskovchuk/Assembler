.model small
.stack 100h
.486
.data
n   db      3
m   dw      1, -9, 3
    dw      7, 2, 4
    dw      0, -2, -8
n2  dw      3
max dw      ?
min dw      ?

.code
Start: 
    mov     ax,     @data
    mov     ds,     ax
    
    
    
    mov     al,    n
    imul    al
    mov     n2,    ax

    
    
    mov     cx,    n2
    lea     bx,    m
    mov     ax,    [bx]
    mov     dx,    [bx]
    inc     bx
    inc     bx
    dec     cx
m1:    
    cmp     [bx],  ax
    jnl short m2
    mov     ax,    [bx]
m2:
    cmp     [bx],  dx
    jng short m3
    mov     dx,    [bx]
m3:
    inc     bx
    inc     bx
    loop    m1
    mov     min,   ax
    mov     max,   dx
    
    
    
    mov     cx,    n2
    lea     bx,    m
m4:
    cmp word ptr    [bx],  0
    jnl short m5
    mov     [bx],  ax
m5:
    cmp word ptr    [bx],  0
    jng short m6
    mov     [bx],  dx
m6:
    inc     bx
    inc     bx
    loop    m4
    
    
    mov     cx,    n2
    lea     bx,    m
m7:
    mov     ax,    [bx]
    inc     bx
    inc     bx
    loop    m7
    
    
mov     ax,     4c00h
int 21h
end Start
