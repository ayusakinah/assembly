CLO
; -------------------------------------------------------------------------------	
	MOV	AL,0
	MOV	BL,C7
	OUT	06
	
LOOP:
	IN	06
	AND	AL,20
	JNZ	UP	; Klik arrow icon "UP" on the port lift to going up

	IN	06
	AND	AL,10
	JNZ	DOWN	; Klik arrow icon "DOWN" on the port lift to going down

	JMP	LOOP

UP:
	MOV	AL,21
	OUT	06
	MOV	AL,90	
	OUT	01
	MOV	[BF],AL
	IN	06
	AND	AL,4
	JZ	NIM
	JNZ	STOPPED	; Press "Enter or Space bar" for stopped the lift to prevent the crashed	
NIM:
	IN	00	; Press "Enter" to END this looping RepUP
	MOV	[BL],AL
	INC	BL
	CMP	AL,0D
	JNZ	NIM
	JMP	NAIK
NAIK:
	MOV	AL,4E	; ASCII code of 'N'
	MOV	[E6],AL	; RAM location mapped to the VDU
	MOV	AL,41	; ASCII code of 'A'
	MOV	[E7],AL	; RAM location mapped to the VDU
	MOV	AL,49	; ASCII code of 'I'
	MOV	[E8],AL	; RAM location mapped to the VDU
	MOV	AL,4B	; ASCII code of 'K'
	MOV	[E9],AL	; RAM location mapped to the VDU
NEXT:
	JMP	UP
DOWN:
	MOV	AL,12
	OUT	06
	MOV	AL,24	
	OUT	01	
	MOV	[BF],AL
	IN	06
	AND	AL,8
	JZ	NIM2
	JNZ	STOPPED	; Press "Enter or Space bar" for stopped the lift to prevent the crashed	
NIM2:
	IN	00	; Press "Enter" to END this looping RepUP
	MOV	[BL],AL
	INC	BL
	CMP	AL,0D
	JNZ	NIM
	JMP	TURUN
TURUN:
	MOV	[CF],AL	; RAM location mapped to the VDU
	MOV	AL,54	; ASCII code of 'T'
	MOV	[E6],AL	; RAM location mapped to the VDU
	MOV	AL,55	; ASCII code of 'U'
	MOV	[E7],AL	; RAM location mapped to the VDU
	MOV	AL,52	; ASCII code of 'R'
	MOV	[E8],AL	; RAM location mapped to the VDU
	MOV	AL,55	; ASCII code of 'U'
	MOV	[E9],AL	; RAM location mapped to the VDU
	MOV	AL,4E	; ASCII code of 'N'
	MOV	[E9],AL	; RAM location mapped to the VDU
NEXT2:
	JMP	DOWN

STOPPED:
	MOV	AL,[BF]
	MOV	AL,0
	OUT	06
	MOV	AL,48	
	OUT	01
	AND	AL,0
	JNZ	Loop
	JMP	NIM3
NIM3:
	IN	00	; Press "Enter" to END this looping RepUP
	MOV	[BL],AL
	INC	BL
	CMP	AL,0D
	JNZ	NIM3
	JMP	STOP
STOP:
	MOV	AL,53	; ASCII code of 'S'
	MOV	[E6],AL	; RAM location mapped to the VDU
	MOV	AL,54	; ASCII code of 'T'
	MOV	[E7],AL	; RAM location mapped to the VDU
	MOV	AL,4F	; ASCII code of 'O'
	MOV	[E8],AL	; RAM location mapped to the VDU
	MOV	AL,50	; ASCII code of 'P'
	MOV	[E9],AL	; RAM location mapped to the VDU
NEXT3:
	JMP	STOPPED

	END
; -------------------------------------------------------------------------------------------------