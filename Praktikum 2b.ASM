CLO
Start:
	MOV	AL,8	; A short delay.
	CALL	30	; Call the procedure at address [30]

	MOV	AL,10	; A middle sized delay.
	CALL	30	; Call the procedure at address [30]

	MOV	AL,20	; A Longer delay.
	CALL	30	; Call the procedure at address [30]

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

