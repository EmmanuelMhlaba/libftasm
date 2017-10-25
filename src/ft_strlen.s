section .text
	global _ft_strlen
_ft_strlen:
	push rdi
	push rcx
	push rbx
	xor al, al
	mov rbx, rdi
	xor rcx, rcx
	not rcx
	repne scasb
	sub rdi, rbx
	sub rdi, 1
	mov rax, rdi
	pop rbx
	pop rcx
	pop rdi
	ret
