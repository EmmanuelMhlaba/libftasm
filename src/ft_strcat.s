section .text
	extern _ft_strlen
	global _ft_strcat
_ft_strcat:
	call _ft_strlen
	mov rcx, 0
	push rbx
loop:
	cmp byte[rsi + rcx], 0
	je return
	mov rbx, [rsi + rcx]
	mov [rdi + rax], rbx
	inc rcx
	inc rax
	jmp loop
return:
	mov byte[rdi + rax], 0
	mov rax, rdi
	pop rbx
	ret
