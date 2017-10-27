	BITS	64

	SECTION	.text
	GLOBAL	memmove

memmove:
	XOR	RCX, RCX
	CMP	RDX, RCX 	; cmp to 0
	JZ	return
	MOV	R10, RDI	
	SUB	R10, RSI	; on soustrait RDI et RSI pour savoir lequel est le plus grand
	CMP	R10, RCX	; cmp to 0
	JG	copy_inverse

;;; On copie en partant du début
	
copy:
	DEC	RDX
	MOV	AL, [RSI + RCX]
	MOV	[RDI + RCX], AL
	INC	RCX
	CMP	RDX, 0
	JZ	return
	JMP	copy
	
;;; On copie en partant de la fin
	
copy_inverse:
	DEC	RDX
	MOV	AL, [RSI + RDX]
	MOV	[RDI + RDX], AL
	CMP	RDX, RCX	; cmp to 0
	JZ	return
	JMP	copy_inverse

return:
	MOV	RAX, RDI
	RET

