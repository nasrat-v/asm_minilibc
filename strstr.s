	BITS 64

	SECTION .text
	GLOBAL	strstr
	
strstr:
	XOR	RAX, RAX
	XOR	R8, R8
	XOR	R9, R9

first_while:
	XOR	RCX, RCX

second_while:
	MOV	R8, R9
	ADD	R8, RCX
	MOV	BL, [RDI + R8]
	CMP	byte[RSI + RCX], 0
	JZ	return_ptr
	CMP	byte[RDI + R8], 0
	JZ	return_error
	CMP	[RSI + RCX], BL
	JNE	incr
	INC	RCX
	JMP	second_while

incr:
	INC	R9
	JMP	first_while
	
return_ptr:
	LEA	RAX, [RDI + R9]
	RET
	
return_error:
	RET
