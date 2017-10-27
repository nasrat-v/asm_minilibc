	BITS	64

	SECTION	.text
	GLOBAL	strcmp
	
strcmp:
	XOR	RCX, RCX
	
count:
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

incr:
	INC	RCX
	JMP	count
