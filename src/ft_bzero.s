section .text
	global _ft_bzero
_ft_bzero:
	cmp rdi, 0
	je return
	mov rcx, rsi
bzero_loop:
	mov byte[rdi], 0
	inc rdi
	loop bzero_loop
return:
	ret
