.file	"sort.c"
    .text
    .p2align 4
    .globl	sort
    .type	sort, @function
sort:

.LC0:
        .string "--from="
.LC1:
        .string "--to="
.LC2:
        .string "%d%c"
.LC3:
        .string "%d "
main:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $864, %rsp
        movl    %edi, -852(%rbp)
        movq    %rsi, -864(%rbp)
        cmpl    $1, -852(%rbp)
        jg      .L2
        movl    $-1, %eax
        jmp     .L21
.L2:
        cmpl    $3, -852(%rbp)
        jle     .L4
        movl    $-2, %eax
        jmp     .L21
.L4:
        movl    $0, -4(%rbp)
        movl    $0, -8(%rbp)
        movl    $0, -12(%rbp)
        movl    $0, -16(%rbp)
        movl    $1, -20(%rbp)
        jmp     .L5
.L8:
        movl    -20(%rbp), %eax
        cltq
        leaq    0(,%rax,8), %rdx
        movq    -864(%rbp), %rax
        addq    %rdx, %rax
        movq    (%rax), %rax
        movl    $7, %edx
        movl    $.LC0, %esi
        movq    %rax, %rdi
        call    strncmp
        testl   %eax, %eax
        jne     .L6
        addl    $1, -12(%rbp)
        movl    -20(%rbp), %eax
        cltq
        leaq    0(,%rax,8), %rdx
        movq    -864(%rbp), %rax
        addq    %rdx, %rax
        movq    (%rax), %rax
        addq    $7, %rax
        movq    %rax, %rdi
        call    atoi
        movl    %eax, -4(%rbp)
        jmp     .L7
.L6:
        movl    -20(%rbp), %eax
        cltq
        leaq    0(,%rax,8), %rdx
        movq    -864(%rbp), %rax
        addq    %rdx, %rax
        movq    (%rax), %rax
        movl    $5, %edx
        movl    $.LC1, %esi
        movq    %rax, %rdi
        call    strncmp
        testl   %eax, %eax
        jne     .L7
        addl    $1, -16(%rbp)
        movl    -20(%rbp), %eax
        cltq
        leaq    0(,%rax,8), %rdx
        movq    -864(%rbp), %rax
        addq    %rdx, %rax
        movq    (%rax), %rax
        addq    $5, %rax
        movq    %rax, %rdi
        call    atoi
        movl    %eax, -8(%rbp)
.L7:
        addl    $1, -20(%rbp)
.L5:
        movl    -20(%rbp), %eax
        cmpl    -852(%rbp), %eax
        jl      .L8
        cmpl    $2, -12(%rbp)
        je      .L9
        cmpl    $2, -16(%rbp)
        jne     .L10
.L9:
        movl    $-3, %eax
        jmp     .L21
.L10:
        cmpl    $0, -12(%rbp)
        jne     .L11
        cmpl    $0, -16(%rbp)
        jne     .L11
        movl    $-4, %eax
        jmp     .L21
.L11:
        movl    $0, -24(%rbp)
.L17:
        leaq    -837(%rbp), %rdx
        leaq    -836(%rbp), %rax
        movq    %rax, %rsi
        movl    $.LC2, %edi
        movl    $0, %eax
        call    __isoc99_scanf
        movl    -836(%rbp), %eax
        cmpl    %eax, -4(%rbp)
        jl      .L12
        cmpl    $0, -12(%rbp)
        jle     .L12
        movl    -836(%rbp), %edx
        movq    stdout(%rip), %rax
        movl    $.LC3, %esi
        movq    %rax, %rdi
        movl    $0, %eax
        call    fprintf
.L12:
        movl    -836(%rbp), %eax
        cmpl    %eax, -8(%rbp)
        jg      .L13
        cmpl    $0, -16(%rbp)
        jle     .L13
        movl    -836(%rbp), %edx
        movq    stderr(%rip), %rax
        movl    $.LC3, %esi
        movq    %rax, %rdi
        movl    $0, %eax
        call    fprintf
.L13:
        movl    -836(%rbp), %eax
        cmpl    %eax, -4(%rbp)
        jl      .L14
        cmpl    $0, -12(%rbp)
        jne     .L15
.L14:
        movl    -836(%rbp), %eax
        cmpl    %eax, -8(%rbp)
        jg      .L16
        cmpl    $0, -16(%rbp)
        jne     .L15
.L16:
        movl    -836(%rbp), %edx
        movl    -24(%rbp), %eax
        cltq
        movl    %edx, -432(%rbp,%rax,4)
        movl    -836(%rbp), %edx
        movl    -24(%rbp), %eax
        cltq
        movl    %edx, -832(%rbp,%rax,4)
        addl    $1, -24(%rbp)
.L15:
        movzbl  -837(%rbp), %eax
        cmpb    $32, %al
        je      .L17
        movl    -24(%rbp), %edx
        leaq    -432(%rbp), %rax
        movl    %edx, %esi
        movq    %rax, %rdi
        call    sort
        movl    $0, -28(%rbp)
        movl    $0, -32(%rbp)
        jmp     .L18
.L20:
        movl    -32(%rbp), %eax
        cltq
        movl    -832(%rbp,%rax,4), %edx
        movl    -32(%rbp), %eax
        cltq
        movl    -432(%rbp,%rax,4), %eax
        cmpl    %eax, %edx
        je      .L19
        addl    $1, -28(%rbp)
.L19:
        addl    $1, -32(%rbp)
.L18:
        movl    -32(%rbp), %eax
        cmpl    -24(%rbp), %eax
        jl      .L20
        movl    -28(%rbp), %eax
.L21:
        leave
        ret