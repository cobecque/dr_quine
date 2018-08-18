;out of code
DEFAULT REL
section .data
n:	db 0x0A, 0
q:	db 0x22, 0
c:	db ";out of code%1$cDEFAULT REL%1$csection .data%1$cn:	db 0x0A, 0%1$cq:	db 0x22, 0%1$cc:	db %2$c%3$s%2$c, 0%1$cf:	db %2$cGrace_kid.asm%2$c, 0%1$cm:	db %2$cw+%2$c, 0%1$c%1$csection .text%1$c	global start%1$c	global _main%1$c	extern _fprintf%1$c	extern _fopen%1$c%1$cstart:%1$c	call _main%1$c	ret%1$c%1$c_main:%1$c	push rbp%1$c	mov rbp, rsp%1$c	sub rsp, 16%1$c	lea rdi, [f]%1$c	lea rsi, [m]%1$c	mov rcx, 0%1$c	call _fopen%1$c	mov rdi, rax%1$c	lea rsi, [c]%1$c	mov rdx, [n]%1$c	lea r8, [c]%1$c	mov rcx, [q]%1$c	call _fprintf%1$c	leave%1$c	ret%1$c", 0
f:	db "Grace_kid.asm", 0
m:	db "w+", 0

section .text
	global start
	global _main
	extern _fprintf
	extern _fopen

start:
	call _main
	ret

_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	lea rdi, [f]
	lea rsi, [m]
	mov rcx, 0
	call _fopen
	mov rdi, rax
	lea rsi, [c]
	mov rdx, [n]
	lea r8, [c]
	mov rcx, [q]
	call _fprintf
	leave
	ret
