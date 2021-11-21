CLO		; Close unwanted windows.
	MOV	BL,C1
Rep:
	IN	00	; Wait for key press - Store it in AL.
	MOV	[BL],AL
	INC	BL
	CMP	AL,0D	; Was it the Enter key? (ASCII 0D)
	JNZ	Rep	; No - jump back.  Yes - end.

END
; --------------------------------------------------------------