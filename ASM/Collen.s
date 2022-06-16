;out of code
DEFAULT REL
section .data
n:	db 0x0A
q:	db 0x22
c:	db ";out of code%1$cDEFAULT REL%1$csection .data%1$cn:	db 0x0A%1$cq:	db 0x22%1$cc:	db %2$c%3$s%2$c%1$c%1$csection .text%1$c	global start%1$c	global main%1$c	extern printf%1$c%1$cstart:%1$c	call main%1$c	ret%1$c%1$cmain:%1$c	;in code%1$c	push rbp%1$c	mov rbp, rsp%1$c	sub rsp, 16%1$c	lea rdi, [c]%1$c	mov rsi, [n]%1$c	lea rcx, [c]%1$c	mov rdx, [q]%1$c	call printf%1$c	leave%1$c	ret%1$c"

section .text
	global start
	global main
	extern printf

start:
	call main
	ret

main:
	;in code
	push rbp
	mov rbp, rsp
	sub rsp, 16
	lea rdi, [c]
	mov rsi, [n]
	lea rcx, [c]
	mov rdx, [q]
	call printf
	leave
	ret
