CLO
; ---------------------- DATA TABLES --------------------------

	JMP	Start	; Skip past the data table.

	DB	4F	; Data table begins.
	DB	4F	; These values control the Snake and Maze
	DB	4F
	DB	4F
	DB	4F
	DB	4F
	DB	4F
	DB	4F
	DB	4F
	DB	4F
	DB	1F
	DB	1F
	DB	1C
	DB	8F
	DB	8F
	DB	8F
	DB	8F
	DB	8B
	DB	1F
	DB	1F
	DB	1A
	DB	4F
	DB	4F
	DB	4F
	DB	4F
	DB	4D
	DB	1F
	DB	1F
	DB	1F
	DB	8F
	DB	8F
	DB	8F
	DB	8F
	DB	8F
	DB	8F
	DB	8F
	DB	8D
	DB	2F
	DB	2F
	DB	2F
	DB	2F
	DB	2F
	DB	2A
	DB	8F
	DB	8F
	DB	8A
	DB	1F
	DB	1F
	DB	1F
	DB	1F
	DB	1F
	DB	1F
	DB	1F
	DB	18
	DB	4F
	DB	4F
	DB	4F
	DB	4F
	DB	4F
	DB	4F
	DB	4F
	DB	4F
	DB	4F
	DB	4F
	DB	4C	; This sequence is simplified.
	DB	FF	; Last entry is also used as end marker

Start:
	MOV	BL,02	; 02 is start address of data table
Rep:
	MOV	AL,[BL]	; Copy data from table to AL
	OUT	04	; Output from AL register to port 01

	CMP	AL,FF	; Last item in data table ???
	JZ	Start	; If yes then jump to Start
	INC	BL	; In no then point BL to the next entry
	JMP	Rep	; Jump back to do next table entry

	END
; --------------------------------------------------------------