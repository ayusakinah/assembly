CLO
; ---------------------- DATA TABLES --------------------------

	JMP	Start	; Skip past the data table.

	DB	84	; Data table begins.
	DB	50	; These values control the traffic lights
	DB	30	; This sequence is simplified.
	DB	28	; Last entry is also used as end marker

Start:
	MOV	BL,02	; 02 is start address of data table
Rep:
	MOV	AL,[BL]	; Copy data from table to AL
	OUT	01	; Output from AL register to port 01

	CMP	AL,28	; Last item in data table ???
	JZ	Start	; If yes then jump to Start
	INC	BL	; In no then point BL to the next entry
	JMP	Rep	; Jump back to do next table entry

	END
; --------------------------------------------------------------