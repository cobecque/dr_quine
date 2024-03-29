%define COUNT 5
DEFAULT REL

global start
global main
extern sprintf
extern fprintf
extern fopen
extern fclose
extern system

section .data
nl:	db 0x0A
quote:	db 0x22
msg:	db "%%define COUNT %4$d%1$cDEFAULT REL%1$c%1$cglobal start%1$cglobal main%1$cextern sprintf%1$cextern fprintf%1$cextern fopen%1$cextern fclose%1$cextern system%1$c%1$csection .data%1$cnl:	db 0x0A%1$cquote:	db 0x22%1$cmsg:	db %2$c%3$s%2$c, 0%1$cfmt:	db %2$cSully_%%d.s%2$c, 0%1$cmode:	db %2$cw+%2$c, 0%1$ccomb:	db %2$c%nasm -f macho64 Sully_%%1$d.s -o ./obj/Sully_%%1$d.o && gcc -Wall -Werror -Wextra ./obj/Sully_%%1$d.o -o ./obj/Sully_%%1$d && ./obj/Sully_%%1$d%2$c, 0%1$cfmt_op:	db %2$cr%2$c, 0%1$c%1$csection .bss%1$cfile:	resb 16%1$citer:	resb 4%1$ccomp:	resb 16%1$cfd:		resb 1%1$cf1:		resb 16%1$c%1$csection .text%1$c%1$cstart:%1$c	call main%1$c	ret%1$c%1$cmain:%1$c	push rbp%1$c	mov rbp, rsp%1$c%1$c	mov byte [iter], COUNT%1$c	cmp byte [iter], 0%1$c	je end%1$c%1$c	lea rdi, [f1]%1$c	lea rsi, [fmt]%1$c	mov rdx, [iter]%1$c	call sprintf%1$c%1$c	lea rdi, [f1]%1$c	lea rsi, [fmt_op]%1$c	mov rax, 0%1$c	call fopen%1$c%1$c	cmp rax, 0%1$c	je create_sully%1$c	dec byte [iter]%1$c%1$c	mov rdi, rax%1$c	mov rax, 0%1$c	call fclose%1$c%1$ccreate_sully:%1$c	lea rdi, [file]%1$c	lea rsi, [fmt]%1$c	mov rdx, [iter]%1$c	call sprintf%1$c%1$c	lea rdi, [file]%1$c	lea rsi, [mode]%1$c	mov rax, 0%1$c	call fopen%1$c%1$c	mov [fd], rax%1$c	mov rdi, rax%1$c	lea rsi, [msg]%1$c	mov rdx, [nl]%1$c	mov rcx, [quote]%1$c	lea r8, [msg]%1$c	mov r9, [iter]%1$c	mov rax, 0%1$c	call fprintf%1$c%1$c	mov rdi, [fd]%1$c	mov rax, 0%1$c	call fclose%1$c%1$c	lea rdi, [comp]%1$c	lea rsi, [comb]%1$c	mov rdx, [iter]%1$c	call sprintf%1$c%1$c	lea rdi, [comp]%1$c	mov rax, 0%1$c	call system%1$c%1$cend:%1$c	leave%1$c	ret%1$c", 0
fmt:	db "Sully_%d.s", 0
mode:	db "w+", 0
comb:	db "nasm -f elf64 Sully_%1$d.s -o ./obj/Sully_%1$d.o && gcc -Wall -Werror -Wextra ./obj/Sully_%1$d.o -o ./obj/Sully_%1$d && ./obj/Sully_%1$d", 0
fmt_op:	db "r", 0

section .bss
file:	resb 16
iter:	resb 4
comp:	resb 16
fd:		resb 1
f1:		resb 16

section .text

start:
	call main
	ret

main:
	push rbp
	mov rbp, rsp

	mov byte [iter], COUNT
	cmp byte [iter], 0
	je end

	lea rdi, [f1]
	lea rsi, [fmt]
	mov rdx, [iter]
	call sprintf

	lea rdi, [f1]
	lea rsi, [fmt_op]
	mov rax, 0
	call fopen

	cmp rax, 0
	je create_sully
	dec byte [iter]

	mov rdi, rax
	mov rax, 0
	call fclose

create_sully:
	lea rdi, [file]
	lea rsi, [fmt]
	mov rdx, [iter]
	call sprintf

	lea rdi, [file]
	lea rsi, [mode]
	mov rax, 0
	call fopen

	mov [fd], rax
	mov rdi, rax
	lea rsi, [msg]
	mov rdx, [nl]
	mov rcx, [quote]
	lea r8, [msg]
	mov r9, [iter]
	mov rax, 0
	call fprintf

	mov rdi, [fd]
	mov rax, 0
	call fclose

	lea rdi, [comp]
	lea rsi, [comb]
	mov rdx, [iter]
	call sprintf

	lea rdi, [comp]
	mov rax, 0
	call system

end:
	leave
	ret
