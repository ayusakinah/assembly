; -------------------- Passing Parameters -------------------

; ----- Use the Stack to pass parameters into a procedure ------
	MOV	AL,5
	PUSH	AL
	MOV	BL,5
	PUSH	BL
	POP	BL
	POP	AL
	CALL	60

; ----- A procedure to add two numbers -------------------------
; 	The numbers to be added are on the stack.
;	POP parameters off the stack
;	Do the addition
;	Push answer back onto the stack
;	The majority of procedure calls in real life make use
;	of the stack for parameter passing.  It is very common
;	for the address of a complex data structure in RAM to 
;	be passed to a procedure using the stack.

	ORG	60	; Code starts at address [60]
Rep:
	CMP	BL,1
	JZ	Last
	DEC	BL
	MUL	AL,BL
	JMP	Rep

Last:
	PUSH	AL	; Answer ; The number of pushes must
	PUSH	AL	; Answer ; match the number of pops.
	
	END;
; --------------------------------------------------------------
