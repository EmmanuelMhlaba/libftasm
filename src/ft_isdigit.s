section .text
	global _ft_isdigit
_ft_isdigit:
	cmp rdi, 0x30
	jl return_false
	cmp rdi, 0x39
	jle return_true
	jmp return_false
return_true:
	mov rax, rdi
	ret
return_false:
	mov rax, 0
	ret
	
