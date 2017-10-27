	BITS	64

	SECTION	.text
	GLOBAL	strcasecmp
	
strcasecmp:
	MOV	R10, RDI
	
count:
	MOVZX	RDI, byte[R10]
	CALL	transform_to_lower_case
	MOV	BL, AL
	MOVZX	RDI, byte[RSI]
	CALL	transform_to_lower_case
	CMP	BL, 0
	JZ	return
	CMP	AL, 0
	JZ	return
	CMP	BL, AL
	JZ	incr

return:
	SUB	BL, AL
	MOVSX	RAX, BL
	RET
	
incr:	
	INC	R10
	INC	RSI
	JMP	count
	
;;; Transfrom string to lower case

transform_to_lower_case:
	MOV	RAX, RDI
	SUB	RDI, 65
	CMP	RDI, 25
	JBE	return_transform
	JMP	return_normal

return_transform:
	ADD	RAX, 32

return_normal:
	RET
