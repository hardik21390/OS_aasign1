section .data
int:    dq      0.0
varscanf:       db      "%ld",0
scanf2:         db      "%s",0
printf_fmt:     db      "%ld %s", 0x0a, 0

section .bss
        str:  resb 100
        
section .text

       global main
       extern printf
       extern scanf
       
main:
        push    rbp
        mov     rbp, rsp
        
        lea     rdi, [varscanf]
        lea     rsi, [int]
        xor     rax, rax
        call    scanf
        
        lea     rdi, [scanf2]
        lea     rsi, [str]
        xor     rax, rax
        call    scanf
        
        lea     rdi, [printf_fmt]
        mov     rsi, [int]
        mov     rdx, str
        xor     eax, eax
        call    printf
        xor     rdx, rdx
        xor     eax, eax
        
        pop rbp
        ret
