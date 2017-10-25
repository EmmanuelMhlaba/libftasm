section .text
	global _ft_isascii
_ft_isascii:
	cmp rdi, 0x0
	jl return_false
	cmp rdi, 0x7f
	jle return_true
	jmp return_false
return_true:
	mov rax, rdi
	ret
return_false:
	mov rax, 0
	ret
