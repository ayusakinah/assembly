CLO		; Close unwanted window.
; ===== IMMEDIATE MOVES =====
	MOV	AL,05	; Copy 05 HEX into AL register.
	MOV	BL,03	; Copy 03 HEX into BL register.
	ADD	AL,BL	; ADD BL to AL, and put the answer into AL.

	MOV	AL,06	; Copy 06 HEX into AL register.
	MOV	BL,08	; Copy 08 HEX into BL register.
	ADD	AL,BL	; ADD BL to AL, and put the answer into AL.

	MOV	AL,7E	; Copy 7E HEX into AL register.
	MOV	BL,01	; Copy 01 HEX into BL register.
	ADD	AL,BL	; ADD BL to AL, and put the answer into AL.

	ADD	AL,BL
	ADD	AL,BL
	ADD	AL,BL

; ===== IMMEDIATE MOVES =====
	MOV	AL,0F	; Copy 0F HEX into AL register.
	MOV	BL,04	; Copy 04 HEX into BL register.
	SUB	AL,BL	; Subtract BL from AL, and put the answer into AL.

	MOV	AL,04	; Copy 04 HEX into AL register.
	MOV	BL,0E	; Copy 0E HEX into BL register.
	SUB	AL,BL	; Subtract BL from AL, and put the answer into AL.

	MOV	AL,82	; Copy 82 HEX into AL register.
	MOV	BL,01	; Copy 01 HEX into BL register.
	SUB	AL,BL	; Subtract BL from AL, and put the answer into AL.

	SUB	AL,BL
	SUB	AL,BL
	SUB	AL,BL

; ===== IMMEDIATE MOVES =====
	MOV	AL,05	; Copy 05 HEX into AL register.
	MOV	BL,08	; Copy 03 HEX into BL register.
	MUL	AL,BL	; Multiply AL by BL, and put the answer into AL.

	MOV	AL,0A	; Copy 0A HEX into AL register.
	MOV	BL,00	; Copy 00 HEX into BL register.
	MUL	AL,BL	; Multiply AL by BL, and put the answer into AL.

	MOV	AL,32	; Copy 32 HEX into AL register.
	MOV	BL,03	; Copy 03 HEX into BL register.
	MUL	AL,BL	; Multiply AL by BL, and put the answer into AL.

	MOV	AL,FB	; Copy FB HEX into AL register.
	MOV	BL,02	; Copy 02 HEX into BL register.
	MUL	AL,BL	; Multiply AL by BL, and put the answer into AL.

	MOV	AL,FB	; Copy FB HEX into AL register.
	MOV	BL,FD	; Copy FD HEX into BL register.	
	MUL	AL,BL	; Multiply AL by BL, and put the answer into AL.

; ===== IMMEDIATE MOVES =====
	MOV	AL,08	; Copy 08 HEX into AL register.
	MOV	BL,02	; Copy 02 HEX into BL register.
	DIV	AL,BL	; Divide AL by BL, and put the answer into AL.

	MOV	AL,08	; Copy 08 HEX into AL register.
	MOV	BL,03	; Copy 03 HEX into BL register.
	DIV	AL,BL	; Divide AL by BL, and put the answer into AL.

	MOV	AL,08	; Copy 08 HEX into AL register.
	MOV	BL,05	; Copy 05 HEX into BL register.
	DIV	AL,BL	; Divide AL by BL, and put the answer into AL.

	MOV	AL,02	; Copy 02 HEX into AL register.
	MOV	BL,08	; Copy 08 HEX into BL register.
	DIV	AL,BL	; Divide AL by BL, and put the answer into AL.

	MOV	AL,E0	; Copy E0 HEX into AL register.
	MOV	BL,08	; Copy 08 HEX into BL register.	
	DIV	AL,BL	; Divide AL by BL, and put the answer into AL.

	MOV	AL,E0	; Copy E0 HEX into AL register.
	MOV	BL,FC	; Copy FC HEX into BL register.	
	DIV	AL,BL	; Divide AL by BL, and put the answer into AL.

	END		; Program ends.
; ===== Program Ends =====================================================




