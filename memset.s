	BITS	64

	SECTION	.text
	GLOBAL	memset

memset:
	XOR	RAX, RAX

count:
	CMP	RAX, RDX
	JZ	return
	MOV	[RDI + RAX], SIL
	INC	RAX
	JMP	count

return:
	LEA	RAX, [RDI]
	RET
