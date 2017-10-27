	BITS	64

	SECTION	.text
	GLOBAL	strcspn

strcspn:
	XOR	RAX, RAX

first_while:
	CMP	byte[RDI + RAX], 0
	JZ	return
	XOR	RCX, RCX
	
second_while:
	MOV	BL, byte[RSI + RCX]
	CMP	byte[RSI + RCX], 0
	JZ	incr
	CMP	BL, byte[RDI + RAX]
	JZ	return
	INC	RCX
	JMP	second_while

incr:
	INC	RAX
	JMP	first_while
	
return:
	RET
