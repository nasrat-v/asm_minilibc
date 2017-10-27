	BITS	64
	
	SECTION	.text			; Code Section
	GLOBAL	strlen

strlen:
	XOR	RAX, RAX		; Initialize Offset to 0

count:
	CMP	byte[RDI + RAX], 0	; / If Byte at (addr RDI + Offset) is Null
	JZ	return			; \ return Offset
	INC	RAX			; Increments Offset
	JMP	count			; Loop

return:
	RET				; Return Offset
