section .data
nl:
	.character db 0x0a
	.length equ $ - nl.character

section .text
	extern _ft_strlen
	global _ft_puts
_ft_puts:
	call _ft_strlen
	push rcx
	push rbx
	mov rcx, rdi
	mov rbx, rax
	mov rax, 0x2000004
	mov rdi, 1
	mov rsi, rcx
	mov rdx, rbx
	syscall
	pop rbx
	pop rcx
	mov rax, 0x2000004
	mov rdi, 1
	lea rsi, [rel nl.character]
	mov rdx, nl.length
	syscall
	ret
