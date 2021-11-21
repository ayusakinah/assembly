; ===== Memory Mapped VDU =====================================================
	;KELOMPOK:
	MOV	AL,4B	; ASCII code of 'K'
	MOV	[C0],AL	; RAM location mapped to the top left corner of the VDU
	MOV	AL,45	; ASCII code of 'E'
	MOV	[C1],AL	; RAM location mapped to the VDU
	MOV	AL,4C	; ASCII code of 'L'
	MOV	[C2],AL	; RAM location mapped to the VDU
	MOV	AL,4F	; ASCII code of 'O'
	MOV	[C3],AL	; RAM location mapped to the VDU
	MOV	AL,4D	; ASCII code of 'M'
	MOV	[C4],AL	; RAM location mapped to the VDU
	MOV	AL,50	; ASCII code of 'P'
	MOV	[C5],AL	; RAM location mapped to the VDU
	MOV	AL,4F	; ASCII code of 'O'
	MOV	[C6],AL	; RAM location mapped to the VDU
	MOV	AL,4B	; ASCII code of 'K'
	MOV	[C7],AL	; RAM location mapped to the VDU
	MOV	AL,3A	; ASCII code of ':'
	MOV	[C8],AL	; RAM location mapped to the VDU
		
	;spasi
	;MOV	AL,20	; ASCII code of 'Spa'
	;MOV	[C9],AL	; RAM location mapped to the VDU

	;1. Ayu
	MOV	AL,31	; ASCII code of '1'
	MOV	[D0],AL	; RAM location mapped to the top left corner of the VDU
	MOV	AL,2E	; ASCII code of '.'
	MOV	[D1],AL	; RAM location mapped to the VDU
	MOV	AL,20	; ASCII code of 'Spa'
	MOV	[D2],AL	; RAM location mapped to the VDU
	MOV	AL,41	; ASCII code of 'A'
	MOV	[D3],AL	; RAM location mapped to the VDU
	MOV	AL,79	; ASCII code of 'y'
	MOV	[D4],AL	; RAM location mapped to the VDU
	MOV	AL,75	; ASCII code of 'u'
	MOV	[D5],AL	; RAM location mapped to the VDU

	;spasi
	;MOV	AL,20	; ASCII code of 'Spa'
	;MOV	[D6],AL	; RAM location mapped to the VDU

	;2. Sari
	MOV	AL,32	; ASCII code of '2'
	MOV	[E0],AL	; RAM location mapped to the VDU
	MOV	AL,2E	; ASCII code of '.'
	MOV	[E1],AL	; RAM location mapped to the VDU
	MOV	AL,20	; ASCII code of 'Spa'
	MOV	[E2],AL	; RAM location mapped to the VDU
	MOV	AL,53	; ASCII code of 'S'
	MOV	[E3],AL	; RAM location mapped to the VDU
	MOV	AL,61	; ASCII code of 'a'
	MOV	[E4],AL	; RAM location mapped to the VDU
	MOV	AL,72	; ASCII code of 'r'
	MOV	[E5],AL	; RAM location mapped to the VDU
	MOV	AL,69	; ASCII code of 'i'
	MOV	[E6],AL	; RAM location mapped to the VDU

	;spasi
	;MOV	AL,20	; ASCII code of 'Spa'
	;MOV	[E7],AL	; RAM location mapped to the VDU

	;3. Mona
	MOV	AL,33	; ASCII code of '3'
	MOV	[F0],AL	; RAM location mapped to the VDU
	MOV	AL,2E	; ASCII code of '.'
	MOV	[F1],AL	; RAM location mapped to the VDU
	MOV	AL,20	; ASCII code of 'Spa'
	MOV	[F2],AL	; RAM location mapped to the VDU
	MOV	AL,4D	; ASCII code of 'M'
	MOV	[F3],AL	; RAM location mapped to the VDU
	MOV	AL,6F	; ASCII code of 'o'
	MOV	[F4],AL	; RAM location mapped to the VDU
	MOV	AL,6E	; ASCII code of 'n'
	MOV	[F5],AL	; RAM location mapped to the VDU
	MOV	AL,69	; ASCII code of 'i'
	MOV	[F6],AL	; RAM location mapped to the VDU

	END
; =============================================================================