	BITS	64

	SECTION	.text
	GLOBAL	memcpy

memcpy:
	XOR	RCX, RCX

count:
	CMP	RCX, RDX
	JZ	return
	MOV	AL, byte[RSI + RCX]
	MOV	[RDI + RCX], byte AL
	INC	RCX
	JMP	count

return:
	MOV	RAX, RDI
	RET
