%include 'functions-macho64.asm'
    
global start

[SECTION .data]

message:
    dw "Hello World"

[SECTION .text]

start:
    mov rax, 3
    mov rdi, 1
check:
    cmp rax, 10000000
    jle loop1
    jmp print
loop1:
    mov rcx, 1
    mov rbx, 3

    push rax
    push rbx
    push rdx
    push rdi
    mov rdi, rax
    call isqrt64_ceil
    mov r8, rax
    pop rdi
    pop rdx
    pop rbx
    pop rax

check2:

    cmp rbx, r8
    jl loop2

    cmp rcx, 1
    jnz check22
    inc rdi
check22:
    add rax, 2
    jmp check
loop2:

    push rdx
    push rax
    push rbx
    push rcx

    xor rdx, rdx
    div rbx

    pop rcx
    pop rbx
    pop rax

    cmp rdx, 0
    jnz loop22
    mov rcx, 0
    mov rbx, rax
    pop rdx
    jmp check2
loop22:
    pop rdx

    add rbx, 2
    jmp check2

print:
    mov rax, rdi
    call iprintLF

exit:
    call quit