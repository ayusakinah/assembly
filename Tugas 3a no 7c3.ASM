CLO
; ---------------------- DATA TABLES --------------------------

	JMP	Start	; Skip past the data table.

	DB	1	; Data table begins.
	DB	2	; These values control the stepper motor forward.
	DB	4	; This sequence is simplified.
	DB	8	; Last entry is also used as end marker

Start:
	MOV	BL,02	; 02 is start address of data table
Rep:
	MOV	AL,[BL]	; Copy data from table to AL
	OUT	05	; Output from AL register to port 01

	CMP	AL,8	; Last item in data table ???
	JZ	Backward; If yes then jump to Start
	INC	BL	; In no then point BL to the next entry
	JMP	Rep	; Jump back to do next table entry

; --------------------------------------------------------------

	JMP	Backward

	DB	4	; Data table begins again.
	DB	2	; These values control the stepper motor backward.
	DB	1	; Last entry is also used as end marker

Backward:
	MOV	AL,[BL]	; Copy data from table to AL
	OUT	05	; Output from AL register to port 01

	CMP	AL,1	; Last item in data table ???
	JZ	Start	; If yes then jump to Start
	DEC	BL	; In no then point BL to the previous entry
	JMP	Backward; Jump back to do next table entry


	END
; --------------------------------------------------------------