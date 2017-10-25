section .text
	global _ft_isprint
_ft_isprint:
	cmp rdi, 0x20
	jl return_false
	cmp rdi, 0x7e
	jle return_true
	jmp return_false
return_true:
	mov rax, rdi
	ret
return_false:
	mov rax, 0
	ret
	
