; A program to demonstrate MOV commands. Mov is short for move.
; ---------------------------------------------------------------
	CLO			; Close unwanted windows.
; ===== IMMEDIATE MOVES =====
	MOV	AL,15		; Copy 15 HEX into the AL register
	MOV	BL,40		; Copy 40 HEX into the BL register
	MOV	CL,50		; Copy 50 HEX into the CL register
	MOV	[80],[45]	; Copy 60 HEX into the DL register
; ===== INDIRECT MOVES =====
	MOV	[80],45		; Copy value in 45 HEX to RAM location [80]
	
	END
; ---------------------------------------------------------------
