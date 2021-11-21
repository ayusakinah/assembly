; -------------------- Passing Parameters -------------------

; ----- Use Registers to pass parameters into a procedure ------

	JMP 	Start	; Skip over bytes used for data storage

	DB	0	; Reserve a byte of RAM at address [02]
	DB	0	; Reserve a byte of RAM at address [03]
Start:
	MOV	AL,5
	MOV	BL,4
	CALL	30	; A procedure to add AL to BL
			; Result returned in AL.

; ----- Prosedur melipatgandakan bilangan -------------------------

;	Parameters passed into procedure using AL and BL
;	Result returned in AL

	ORG	30	; Code starts at address [30]

	MUL	AL,BL	; Do the addition.  Result goes into AL

	END;
; --------------------------------------------------------------


