	BITS	64

	SECTION	.text
	GLOBAL	strncmp

strncmp:
	XOR	RCX, RCX
count:
	CMP	RDX, RCX
	JZ	return_error
	MOV	AL, [RDI + RCX]
	CMP	byte[RDI + RCX], 0
	JZ	return
	CMP	byte[RSI + RCX], 0
	JZ	return
	CMP	AL, byte[RSI + RCX]
	JZ	incr

return:
	SUB	AL, byte[RSI + RCX]
	MOVSX	RAX, AL
	RET

return_error:
	XOR	RAX, RAX
	RET
	
incr:
	INC	RCX
	JMP	count
