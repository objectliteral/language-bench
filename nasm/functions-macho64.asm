; void iprint(Integer number)
; Integer printing function (itoa)
iprint:
    push    rax          
    push    rcx          
    push    rdx          
    push    rsi          
    mov     rcx, 0       
 
divideLoop:
    inc     rcx          
    mov     rdx, 0       
    mov     rsi, 10      
    idiv    rsi          
    add     rdx, 48      
    push    rdx          
    cmp     rax, 0       
    jnz     divideLoop   
 
printLoop:
    dec     rcx          
    mov     rax, rsp     
    call    sprint       
    pop     rax          
    cmp     rcx, 0       
    jnz     printLoop    
 
    pop     rsi          
    pop     rdx          
    pop     rcx          
    pop     rax          
    ret
 
 
;------------------------------------------
; void iprintLF(Integer number)
; Integer printing function with linefeed (itoa)
iprintLF:
    call    iprint       
 
    push    rax          
    mov     rax, 0Ah     
    push    rax          
    mov     rax, rsp     
    call    sprint       
    pop     rax          
    pop     rax          
    ret
 
 
;------------------------------------------
; int slen(String message)
; String length calculation function
slen:
    push    rbx
    mov     rbx, rax
 
nextchar:
    cmp     byte [rax], 0
    jz      finished
    inc     rax
    jmp     nextchar
 
finished:
    sub     rax, rbx
    pop     rbx
    ret
 
 
;------------------------------------------
; void sprint(String message)
; String printing function
sprint:
    push    rdx
    push    rcx
    push    rbx
    push    rsi
    push    rax
    call    slen
 
    mov     rdx, rax
    pop     rax
 
    mov     rsi, rax
    mov     rdi, 1
    mov     rax, 0x2000004
    syscall
 
    pop     rsi
    pop     rbx
    pop     rcx
    pop     rdx
    ret
 
 
;------------------------------------------
; void sprintLF(String message)
; String printing with line feed function
sprintLF:
    call    sprint
 
    push    rax
    mov     rax, 0AH
    push    rax
    mov     rax, rsp
    call    sprint
    pop     rax
    pop     rax
    ret
 
 
;------------------------------------------
; void exit()
; Exit program and restore resources
quit:
    mov rax, 0x2000001
    mov rdi, 0
    syscall
    ret

isqrt64:

    mov rbx, rdi
    xor rax, rax

    .while:
    cmp rax, rbx
    jnb .endwhile

    add rbx, rax
    shr rbx, 1

    mov rax, rdi
    xor rdx, rdx
    div rbx

    jmp .while

    .endwhile:
    mov rax, rbx
    ret

isqrt64_ceil:

    mov rbx, rdi
    xor rax, rax

    .while:
    cmp rax, rbx
    jnb .endwhile

    add rbx, rax
    shr rbx, 1

    mov rax, rdi
    xor rdx, rdx
    div rbx

    jmp .while

    .endwhile:
    cmp rdx, 0
    jz $+2
    add rbx, 1
    mov rax, rbx
    
    ret