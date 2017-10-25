section .bss
	buf resb 0x400
section .text
	global _ft_cat
_ft_cat:
	mov rax, 0x2000003
	lea rsi, [rel buf]
	mov rdx, 0x400
	syscall
	cmp rax, 0x0
	jle return
	push rdi
	mov rax, 0x2000004
	mov rdi, 1
	lea rsi, [rel buf]
	mov rdx, 0x400
	syscall
	pop rdi
	jmp _ft_cat
return:
	ret
