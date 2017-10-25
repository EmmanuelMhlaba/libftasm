section .text
	global _ft_isalpha
_ft_isalpha:
	cmp rdi, 0x41
	jl return_false
	cmp rdi, 0x5a
	jle return_true
	cmp rdi, 0x7a
	jg return_false
	cmp rdi, 0x61
	jge return_true
	jmp return_false
return_true:
	mov rax, rdi
	ret
return_false:
	mov rax, 0
	ret
	
