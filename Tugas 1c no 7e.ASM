; ===== Memory Mapped VDU =====================================================
	MOV	AL,48	; ASCII code of 'H'
	MOV	[C0],AL	; RAM location mapped to the top left corner of the VDU
	MOV	AL,45	; ASCII code of 'E'
	MOV	[C1],AL	; RAM location mapped to the VDU
	MOV	AL,4C	; ASCII code of 'L'
	MOV	[C2],AL	; RAM location mapped to the VDU
	MOV	AL,4C	; ASCII code of 'L'
	MOV	[C3],AL	; RAM location mapped to the VDU
	MOV	AL,4F	; ASCII code of 'O'
	MOV	[C4],AL	; RAM location mapped to the VDU

	END
; =============================================================================