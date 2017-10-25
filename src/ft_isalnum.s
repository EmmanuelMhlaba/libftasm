section .text
	extern _ft_isalpha
	extern _ft_isdigit
	global _ft_isalnum
_ft_isalnum:
	call _ft_isalpha
	cmp rax, 0
	jne return_true
	call _ft_isdigit
	cmp rax, 0
	jne return_true
	jmp return_false
return_true:
	mov rax, rdi
	ret
return_false:
	mov rax, 0
	ret
