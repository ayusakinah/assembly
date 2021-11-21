; --------------------------------------------------------------
; An example of software interrupts.
; --------------------------------------------------------------
	JMP	Start		; Jump past table of interrupt vectors
	DB	51
Start:
	INT	02
; --------------------------------------------------------------
	ORG	50
	DB	0

; Interrupt code starts here
	MOV	BL,C0

Rep:
	IN	00
	CMP	AL,0D	; Jika press "enter" akan lompat ke show
	JZ	Show
	CMP	AL,20
	JZ	Del
	JMP	ReP
	
Show:
	IN	00	; Masukkan karakter
	MOV	[BL],AL	; Menampilkan karakter di VDU
	INC	BL
	JMP	Rep
Del:
	IN	00	; Press backspace to remove char
	DEC	BL
	MOV	[BL],AL	; Show result in VDU
	JMP	Rep

	IRET
; --------------------------------------------------------------
	END
; --------------------------------------------------------------

