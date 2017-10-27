	BITS	64

	SECTION	.text
	GLOBAL	strpbrk

strpbrk:
	XOR	RAX, RAX
	XOR	R8, R8

first_while:
	XOR	RCX, RCX
	MOV	AL, [RDI + R8]
	CMP	AL, 0
	JZ	return_error
	
second_while:
	CMP	byte[RSI + RCX], 0
	JZ	incr
	CMP	[RSI + RCX], AL
	JZ	return_ptr
	INC	RCX
	JMP	second_while

incr:
	INC	R8
	JMP	first_while
	
return_error:
	RET
	
return_ptr:
	LEA	RAX, [RDI + R8]
	RET
