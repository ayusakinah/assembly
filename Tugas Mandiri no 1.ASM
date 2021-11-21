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
Start:
	MOV	BL,02	; 02 is start address of data table
	MOV	AL,3E	; 0011 1110
	OUT	02	; Send the data in AL to Port 02
	MOV	AL,2D	; 0010 1101
	OUT	02	; Send the data in AL to Port 02
Rep:
	MOV	AL,[BL]	; Copy data from table to AL
	OUT	04	; Output from AL register to port 01

	CMP	AL,4F	; Last item in data table ???
	JZ	Next	; If yes then jump to Start
	INC	BL	; In no then point BL to the next entry
	JMP	Rep	; Jump back to do next table entry
; -----------------------------------------------------------------------------
	DB	1F
	DB	1F
	DB	1C
Next:
	MOV	BL,02	; 02 is start address of data table
	MOV	AL,EE	; 1110 1110
	OUT	02	; Send the data in AL to Port 02
	MOV	AL,FD	; 1111 1101
	OUT	02	; Send the data in AL to Port 02
Rep1:
	MOV	AL,[BL]	; Copy data from table to AL
	OUT	04	; Output from AL register to port 01

	CMP	AL,1C	; Last item in data table ???
	JZ	Next2	; If yes then jump to Start
	INC	BL	; In no then point BL to the next entry
	JMP	Rep1	; Jump back to do next table entry
; ------------------------------------------------------------------------------
	DB	8F
	DB	8F
	DB	8F
	DB	8F
	DB	8B
Next2:
	MOV	AL,7A	; 0111 1010
	OUT	02	; Send the data in AL to Port 02
	MOV	AL,E7	; 1110 0111
	OUT	02	; Send the data in AL to Port 02
	MOV	BL,02	; 02 is start address of data table
Rep2:
	MOV	AL,[BL]	; Copy data from table to AL
	OUT	04	; Output from AL register to port 01

	CMP	AL,8B	; Last item in data table ???
	JZ	Next3	; If yes then jump to Start
	INC	BL	; In no then point BL to the next entry
	JMP	Rep2	; Jump back to do next table entry
; ------------------------------------------------------------------------------
	DB	1F
	DB	1F
	DB	1A
Next3:
	MOV	AL,EE	; 1110 1110
	OUT	02	; Send the data in AL to Port 02
	MOV	AL,FD	; 1111 1101
	OUT	02	; Send the data in AL to Port 02
	MOV	BL,02	; 02 is start address of data table
Rep3:
	MOV	AL,[BL]	; Copy data from table to AL
	OUT	04	; Output from AL register to port 01

	CMP	AL,1A	; Last item in data table ???
	JZ	Next4	; If yes then jump to Start
	INC	BL	; In no then point BL to the next entry
	JMP	Rep3	; Jump back to do next table entry
; ------------------------------------------------------------------------------	
	DB	4F
	DB	4F
	DB	4F
	DB	4F
	DB	4D
Next4:
	MOV	AL,3E	; 0011 1110
	OUT	02	; Send the data in AL to Port 02
	MOV	AL,2D	; 0010 1101
	OUT	02	; Send the data in AL to Port 02
	MOV	BL,02	; 02 is start address of data table
Rep4:
	MOV	AL,[BL]	; Copy data from table to AL
	OUT	04	; Output from AL register to port 01

	CMP	AL,4D	; Last item in data table ???
	JZ	Next5	; If yes then jump to Start
	INC	BL	; In no then point BL to the next entry
	JMP	Rep4	; Jump back to do next table entry
; ------------------------------------------------------------------------------
	DB	1F
	DB	1F
	DB	1F
Next5:
	MOV	AL,EE	; 1110 1110
	OUT	02	; Send the data in AL to Port 02
	MOV	AL,FD	; 1111 1101
	OUT	02	; Send the data in AL to Port 02
	MOV	BL,02	; 02 is start address of data table
Rep5:
	MOV	AL,[BL]	; Copy data from table to AL
	OUT	04	; Output from AL register to port 01

	CMP	AL,1F	; Last item in data table ???
	JZ	Next6	; If yes then jump to Start
	INC	BL	; In no then point BL to the next entry
	JMP	Rep5	; Jump back to do next table entry
; ------------------------------------------------------------------------------
	DB	8F
	DB	8F
	DB	8F
	DB	8F
	DB	8F
	DB	8F
	DB	8F
	DB	8D
Next6:
	MOV	BL,02	; 02 is start address of data table
	MOV	AL,7A	; 0111 1010
	OUT	02	; Send the data in AL to Port 02
	MOV	AL,E7	; 1110 0111
	OUT	02	; Send the data in AL to Port 02
Rep6:
	MOV	AL,[BL]	; Copy data from table to AL
	OUT	04	; Output from AL register to port 01

	CMP	AL,8D	; Last item in data table ???
	JZ	Next7	; If yes then jump to Start
	INC	BL	; In no then point BL to the next entry
	JMP	Rep6	; Jump back to do next table entry
; ------------------------------------------------------------------------------
	DB	2F
	DB	2F
	DB	2F
	DB	2F
	DB	2F
	DB	2A
Next7:
	MOV	BL,02	; 02 is start address of data table
	MOV	AL,70	; 0111 0000
	OUT	02	; Send the data in AL to Port 02
	MOV	AL,E5	; 1110 0101
	OUT	02	; Send the data in AL to Port 02
Rep7:
	MOV	AL,[BL]	; Copy data from table to AL
	OUT	04	; Output from AL register to port 01

	CMP	AL,2A	; Last item in data table ???
	JZ	Next8	; If yes then jump to Start
	INC	BL	; In no then point BL to the next entry
	JMP	Rep7	; Jump back to do next table entry
; ------------------------------------------------------------------------------
	DB	8F
	DB	8F
	DB	8A
Next8:
	MOV	BL,02	; 02 is start address of data table
	MOV	AL,7A	; 0111 1010
	OUT	02	; Send the data in AL to Port 02
	MOV	AL,E7	; 1110 0111
	OUT	02	; Send the data in AL to Port 02
Rep8:
	MOV	AL,[BL]	; Copy data from table to AL
	OUT	04	; Output from AL register to port 01

	CMP	AL,8A	; Last item in data table ???
	JZ	Next9	; If yes then jump to Start
	INC	BL	; In no then point BL to the next entry
	JMP	Rep8	; Jump back to do next table entry
; -----------------------------------------------------------------------------
	DB	1F
	DB	1F
	DB	1F
	DB	1F
	DB	1F
	DB	1F
	DB	1F
	DB	18
Next9:
	MOV	BL,02	; 02 is start address of data table
	MOV	AL,EE	; 1110 1110
	OUT	02	; Send the data in AL to Port 02
	MOV	AL,FD	; 1111 1101
	OUT	02	; Send the data in AL to Port 02
Rep9:
	MOV	AL,[BL]	; Copy data from table to AL
	OUT	04	; Output from AL register to port 01

	CMP	AL,18	; Last item in data table ???
	JZ	Next10	; If yes then jump to Start
	INC	BL	; In no then point BL to the next entry
	JMP	Rep9	; Jump back to do next table entry
; ------------------------------------------------------------------------------
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
	DB	4C	; This sequence is simplified
	DB	FF	; Last entry is also used as end marker
Next10:
	MOV	BL,02	; 02 is start address of data table
	MOV	AL,3E	; 0011 1110
	OUT	02	; Send the data in AL to Port 02
	MOV	AL,2D	; 0010 1101
	OUT	02	; Send the data in AL to Port 02
Rep10:
	MOV	AL,[BL]	; Copy data from table to AL
	OUT	04	; Output from AL register to port 01

	CMP	AL,FF	; Last item in data table ???
	JZ	Start	; If yes then jump to Start
	INC	BL	; In no then point BL to the next entry
	JMP	Rep10	; Jump back to do next table entry

	END
; --------------------------------------------------------------