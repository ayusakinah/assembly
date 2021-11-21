CLO
; ------------------ Passing Parameters -------------------

; ----- Use RAM locations to pass parameters into a procedure --

	MOV	AL,3
	MOV	[02],AL	; Store 3 into address [02]
	MOV	BL,1
	MOV	[03],BL	; Store 1 into address [03]
	CALL	40

; ----- A procedure to change mark numbers -------------------------
;	Parameters passed into procedure using RAM locations.
;	Result returned in RAM location

	ORG	40	; Code starts at address [40]

	PUSH	CL	; Save registers and flags on the stack
	PUSH	DL
	PUSHF

	MOV	CL,[02]	; Fetch a parameter from RAM
	MOV	DL,[03]	; Fetch a parameter from RAM
	NOT	CL
	NOT	DL
	MOV	[02],CL	; Store the result in RAM
	MOV	[02],DL	; Store the result in RAM

	POPF		; Restore original register 

	POP	DL	; and flag values
	POP	CL

	END;
; --------------------------------------------------------------

