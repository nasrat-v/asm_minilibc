	BITS	64

	SECTION	.text			; Code section
	GLOBAL	strchr

strchr:
	XOR	RAX, RAX		; Set offset to 0

comp:
	CMP	[RDI + RAX], SIL	; / If (addr RDI + offset) == char SIL
	JZ	return_ptr		; \ return pointer to first occurence
	CMP	byte[RDI + RAX], 0 	; / If Byte at (addr RDI + offset) is NULL
	JZ	return			; \ return NULL
	INC	RAX			; Increments offset
	JMP	comp			; Loop

return_ptr:
	ADD	RAX, RDI		; Set pointer of first occurence for returning parameter
	RET
	
return:
	XOR	RAX, RAX		; Return NULL
	RET
