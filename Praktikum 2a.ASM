CLO		; Close unwanted windows.
Rep:
	IN	00	; Wait for key press - Store it in AL.
	CMP	AL,0D	; Was it the Enter key? (ASCII 0D)
	JNZ	Rep	; No - jump back.  Yes - end.

END
; --------------------------------------------------------------
