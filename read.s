	BITS	64

	SECTION	.text
	GLOBAL	read

read:
	MOV	RAX, 0
	SYSCALL

return:
	RET
