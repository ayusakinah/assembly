; --------------------------------------------------------------
; An example of software interrupts.
; --------------------------------------------------------------
	JMP	Start	; Jump past table of interrupt vectors
	DB	51	; Vector at 02 pointing to address 51
Start:
	INT	02	; Do interrupt 02
	JMP	Start
; --------------------------------------------------------------

	ORG	50
	DB	E0	; Data byte - could be a whole table here
			; Interrupt code starts here
Rep:	
	IN	00
	CMP	AL,0D
	JNZ	Rep
	MOV	AL,[50]	; Copy bits from RAM into AL
	NOT	AL	; Invert the bits in AL
	MOV	[50],AL	; Copy inverted bits back to RAM
	
	IRET

; --------------------------------------------------------------
	END
; --------------------------------------------------------------
