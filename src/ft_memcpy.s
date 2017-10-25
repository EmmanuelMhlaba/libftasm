section .text
	global _ft_memcpy
_ft_memcpy:
	push rdi
	mov rax, rsi
	mov rcx, rdx
	cld
	rep movsb
	mov rax, rdi
	pop rdi
	ret
