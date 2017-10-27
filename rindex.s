	BITS	64

	SECTION	.text
	GLOBAL	rindex

rindex:
	XOR	RAX, RAX
	XOR	RCX, RCX

count:
	CMP	[RDI + RCX], SIL
	JZ	set_ptr

verif_end:
	CMP	byte[RDI + RCX], 0
	JZ	return
	INC	RCX
	JMP	count
	
set_ptr:
	LEA	RAX, [RDI + RCX]
	JMP	verif_end
	
return:
	RET
