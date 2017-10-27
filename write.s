	BITS	64

	SECTION	.text
	GLOBAL	write

write:
	MOV	RAX, 1
	SYSCALL

return:	
	RET
