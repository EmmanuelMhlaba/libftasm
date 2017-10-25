section .text
	extern _ft_isalpha
	global _ft_tolower
_ft_tolower:
	push rdi
	add rdi, 0x20
	call _ft_isalpha
	cmp rax, 0
	je return_false
	cmp rax, 0x61
	jge return_true
	jmp return_false
return_true:
	mov rax, rdi
	pop rdi
	ret
return_false:
	pop rdi
	mov rax, rdi
	ret
