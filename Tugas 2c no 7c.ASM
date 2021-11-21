CLO
; THE MAIN PROGRAM
	MOV	BL,70	; [70] is the address where the text will
			; be stored. The procedure uses this.

	CALL	10	; The procedure at [10] reads in text and
			; places it starting from the address
			; in BL.
	
	CALL	30

	CALL	40	; This procedure does nothing until you
			; write it.  It should display the text.

	HALT		; DON'T USE END HERE BY MISTAKE.
; --------------------------------------------------------------
; A PROCEDURE TO READ IN THE TEXT
	ORG	10	; Code starts from address [10]
BACK:
	PUSH	BL	; Save BL onto the stack
	PUSHF		; Save the CPU flags onto the stack

Rep:
	IN	00	; Input from port 00 (keyboard),Press Enter key for first time running
	CMP	AL,0D	; Was key press the Enter key?
	JZ	AWAL	; If yes then jump to AWAL
	JMP	SATU	; Jump back to get the next character
	
AWAL:
	MOV	AL,0
	MOV	[BL],AL

	POPF	
	POP	BL

	RET		; Return from the procedure.
; --------------------------------------------------------------
; A PROCEDURE CONVERTION UPPERCASE TO LOWERCASE
	ORG	30
	JMP	AWAL2	
SATU:
	ADD	AL,20	; ADD 20 to AL, (Convert uppercase to lowercase)
	JMP	DUA

AWAL2:
	RET
; --------------------------------------------------------------
; A PROCEDURE TO DISPLAY TEXT ON THE SIMULATED SCREEN
	ORG	40	; Code starts from address [40]
TRY:
	MOV	BL,C0
	JMP	BACK
DUA:			
	MOV	[BL],AL
	INC	BL
	JMP	BACK

Stop:	
	RET		; At present this procedure does
			; nothing other than return.

; --------------------------------------------------------------
	END