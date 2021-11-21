CLO		; Close unwanted windows.
	MOV	BL,A0
	MOV	CL,B0
	MOV	DL,C7
Rep:
	IN	00	; Wait for key press - Store it in AL.
	MOV	[BL],AL
	INC	BL
	CMP	AL,0D	; Was it the Enter key? (ASCII 0D)
	JNZ	Rep	; No - jump back.  Yes - end.
Rep1:
	MOV	BL,[CL]
	MOV	[DL],BL
	INC	CL
	INC	DL
	CMP	BL,0D
	JNZ	Rep1
END
; --------------------------------------------------------------