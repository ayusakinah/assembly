; ----------------------------------------------------------------------------------------------	
	MOV	AL,0
	OUT	06
	
LOOP:
	IN	06
	AND	AL,20
	JNZ	UP	; Klik arrow icon "UP" on the port lift to going up

	IN	06
	AND	AL,10
	JNZ	DOWN	; Klik arrow icon "DOWN" on the port lift to going up

	JMP	LOOP

UP:
	MOV	AL,21
	OUT	06
	MOV	[BF],AL
	IN	06
	AND	AL,4
	JNZ	STOP	; Press "Enter or Space bar" for stopped the lift to prevent the crashed
	MOV	AL,80	; Code to turn the heater on
	OUT	03	; Send code to the heater
	MOV	AL,[BF]
	JMP	LOOP

DOWN:
	MOV	AL,12
	OUT	06
	MOV	[BF],AL
	IN	06
	AND	AL,8
	JNZ	STOP	; Press "Enter or Space bar" for stopped the lift to prevent the crashed
	MOV	AL,0	; Code to turn the heater off
	OUT	03	; Send code to the heater	
	MOV	AL,[BF]
	JMP	LOOP

STOP:
	MOV	AL,[BF]
	MOV	AL,0
	OUT	06
	JMP	LOOP

	END
; -------------------------------------------------------------------------------------------------