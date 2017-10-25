section .text
	extern _ft_isalpha
	global _ft_toupper
_ft_toupper:
	push rdi
	sub rdi, 0x20
	call _ft_isalpha
	cmp rax, 0
	je return_false
	cmp rax, 0x5A
	jle return_true
	jmp return_false
return_true:
	mov rax, rdi
	pop rdi
	ret
return_false:
	pop rdi
	mov rax, rdi
	ret
