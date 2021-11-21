CLO
Start:
	MOV	AL,48	; A short delay.
	CALL	30	; Call the procedure at address [30]
	OUT	01

	MOV	AL,24	; A middle sized delay.
	CALL	30	; Call the procedure at address [30]
	OUT	01

	MOV	AL,90	; A Longer delay.
	CALL	30	; Call the procedure at address [30]
	OUT	01

	MOV	AL,90	; A Longer delay.
	CALL	30	; Call the procedure at address [30]
	OUT	01

JMP	Start	; Jump back to the start.

; ----- Time Delay Procedure Stored At Address [30] -------------
	ORG	30	; Generate machine code from address [30]

	PUSH	AL	; Save AL on the stack.
	PUSHF		; Save the CPU flags on the stack.
Rep:
	DEC	AL	; Subtract one from AL.
	JNZ	REP	; Jump back to Rep if AL was not Zero.

	POPF		; Restore the CPU flags from the stack.
	POP	AL	; Restore AL from the stack.

	RET		; Return from the procedure.
; ---------------------------------------------------------------
	END
; ---------------------------------------------------------------