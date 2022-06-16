;out of code
DEFAULT REL
%define N 0x0A
%define Q 0x22
%macro MAIN 0

global main
extern fprintf
extern fopen

section .text

main:
		push rbp
		mov rbp, rsp
		sub rsp, 16
		lea rdi, [f]
		lea rsi, [m]
		mov rcx, 0
		call fopen
		mov rdi, rax
		lea rsi, [c]
		mov rdx, N
		lea r8, [c]
		mov rcx, Q
		call fprintf
		leave
		ret
%endmacro

section .data
c:	db ";out of code%1$cDEFAULT REL%1$c%%define N 0x0A%1$c%%define Q 0x22%1$c%%macro MAIN 0%1$c%1$cglobal main%1$cextern fprintf%1$cextern fopen%1$c%1$csection .text%1$c%1$cmain:%1$c		push rbp%1$c		mov rbp, rsp%1$c		sub rsp, 16%1$c		lea rdi, [f]%1$c		lea rsi, [m]%1$c		mov rcx, 0%1$c		call fopen%1$c		mov rdi, rax%1$c		lea rsi, [c]%1$c		mov rdx, N%1$c		lea r8, [c]%1$c		mov rcx, Q%1$c		call fprintf%1$c		leave%1$c		ret%1$c%%endmacro%1$c%1$csection .data%1$cc:	db %2$c%3$s%2$c, 0%1$cf:	db %2$cGrace_kid.s%2$c, 0%1$cm:	db %2$cw+%2$c, 0%1$c%1$cMAIN%1$c", 0
f:	db "Grace_kid.s", 0
m:	db "w+", 0

MAIN
