; ------------- This must be on the fast running -----------------------------------------------
; ----------------------------------------------------------------------------------------------	
	MOV	AL,0
	MOV	BL,C0
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
	MOV	AL,7A	; 0111 1010
	OUT	02	; Send the data in AL to Port 02
	MOV	AL,E7	; 1110 0111
	OUT	02	; Send the data in AL to Port 02
	MOV	[BF],AL
	IN	06
	AND	AL,4
	JZ	RepUP
	JNZ	STOP	; Press "Enter or Space bar" for stopped the lift to prevent the crashed
RepUP:
	IN	00	; Press "Enter" to END this looping RepUP
	MOV	[BL],AL
	INC	BL
	CMP	AL,0D
	JNZ	RepUP
	MOV	AL,[BF]
	JMP	UP

DOWN:
	MOV	AL,12
	OUT	06
	MOV	AL,3E	; 0011 1110
	OUT	02	; Send the data in AL to Port 02
	MOV	AL,2D	; 0010 1101
	OUT	02	; Send the data in AL to Port 02
	MOV	[BF],AL
	IN	06
	AND	AL,8
	JZ	RepDN
	JNZ	STOP	; Press "Enter or Space bar" for stopped the lift to prevent the crashed	
RepDN:
	IN	00	; Press "Enter" to END this looping RepDN
	MOV	[BL],AL
	INC	BL
	CMP	AL,0D
	JNZ	RepDN
	MOV	AL,[BF]
	JMP	DOWN

STOP:
	MOV	AL,[BF]
	MOV	AL,0
	OUT	06
	JMP	LOOP

	END
; -----------------------------------------------------------------------------------------------