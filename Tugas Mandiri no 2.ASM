CLO
; ---------------------------------------------------------------
	MOV	BL,C0
Intro:
	IN	00	; Jika press "1" jump to Start1, press "2" jump to Start2
	CMP	AL,31	
	JZ	Start1
	CMP	AL,32	
	JZ	Start2
	JMP	Intro
Start1:
	MOV	AL,30	; A short delay.
	CALL	50	; Call the procedure at address [30]
	OUT	01
Loop1:
	IN	00
	MOV	[BL],AL
	INC	BL
	CMP	AL,0D
	JNZ	Loop1
	JMP	Intro
Start2:
	MOV	AL,78	; A middle sized delay.
	CALL	70	; Call the procedure at address [30]
	OUT	01
Loop2:
	IN	00
	MOV	[BL],AL
	INC	BL
	CMP	AL,0D
	JNZ	Loop2

JMP	Intro	; Jump back to the intro.

; ----- Time Delay Procedure Stored At Address [50] -------------
	ORG	50	; Generate machine code from address [50]

	PUSH	AL	; Save AL on the stack.
	PUSHF		; Save the CPU flags on the stack.
Rep1:
	DIV	AL,9	; Subtract one from AL.
	JNZ	Rep1	; Jump back to Rep if AL was not Zero.

	POPF		; Restore the CPU flags from the stack.
	POP	AL	; Restore AL from the stack.
	
	RET

; ----- Time Delay Procedure Stored At Address [70] -------------
	ORG	70	; Generate machine code from address [70]

	PUSH	AL	; Save AL on the stack.
	PUSHF		; Save the CPU flags on the stack.
Rep2:
	DIV	AL,12	; Subtract one from AL.
	JNZ	Rep2	; Jump back to Rep if AL was not Zero.

	POPF		; Restore the CPU flags from the stack.
	POP	AL	; Restore AL from the stack.

	RET		; Return from the procedure.
; ---------------------------------------------------------------
	END
; ---------------------------------------------------------------