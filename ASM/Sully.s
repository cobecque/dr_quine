;out of code
%define COUNT 5
DEFAULT REL

section .data
n:	db 0x0A, 0
q:	db 0x22, 0
c:	db ";out of code%1$c%%define COUNT %4$d%1$cDEFAULT REL%1$c%1$csection .data%1$cn:	db 0x0A, 0%1$cq:	db 0x22, 0%1$cc:	db %2$c%3$s%2$c, 0%1$cf:	db %2$cSully_%%1$d.s%2$c, 0%1$cm:	db %2$cw+%2$c, 0%1$c%1$csection .bss%1$ci:		resb 1%1$cfile:	resb 16%1$c%1$csection .text%1$c	global start%1$c	global _main%1$c	extern _sprintf%1$c	extern _fprintf%1$c	extern _fopen%1$c%1$cstart:%1$c	call _main%1$c	ret%1$c%1$c_main:%1$c	push rbp%1$c	mov rbp, rsp%1$c	sub rsp, 16%1$c%1$c	mov byte [i], COUNT%1$c	cmp byte [i], 0%1$c	jl end%1$c	dec byte [i]%1$c%1$c	lea rdi, [file]%1$c	lea rsi, [f]%1$c	mov rdx, [i]%1$c	mov rcx, 0%1$c	call _sprintf%1$c%1$c	lea rdi, [file]%1$c	lea rsi, [m]%1$c	mov rcx, 0%1$c	call _fopen%1$c%1$c	mov rdi, rax%1$c	lea rsi, [c]%1$c	mov rdx, [n]%1$c	lea r8, [c]%1$c	mov rcx, [q]%1$c	mov r9, [i]%1$c	call _fprintf%1$c	leave%1$c	ret%1$c%1$cend:%1$c	leave%1$c	ret%1$c", 0
f:	db "Sully_%1$d.s", 0
m:	db "w+", 0

section .bss
iter:	resb 1
file:	resb 16

section .text
	global start
	global _main
	extern _sprintf
	extern _fprintf
	extern _fopen

start:
	call _main
	ret

_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16

	mov byte [iter], COUNT
	cmp byte [iter], 0
	jl end
	dec byte [iter]

	lea rdi, [file]
	lea rsi, [f]
	mov rdx, [iter]
	mov rcx, 0
	call _sprintf

	lea rdi, [file]
	lea rsi, [m]
	mov rcx, 0
	call _fopen

	mov rdi, rax
	lea rsi, [c]
	mov rdx, [n]
	lea r8, [c]
	mov rcx, [q]
	lea r9, [iter]
	call _fprintf
	leave
	ret

end:
	leave
	ret
