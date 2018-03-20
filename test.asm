


	CBLOCK		0x0C
	contador
	var1
	ENDC
	
	clrf		var1
	movlw		0x27
	movwf		var1
	
	
	
	movlw		.34
	movwf		contador
	
	movf		var1,W                     ; W = 0x27   .39    b'00100111'
   	
	
	btfss		var1,5
	goto		estaencero
	goto		estaenuno
	
	
	
SW0 EQU     0	
	
	
	
	
	bsf		STATUS,RP0		; Cambio de banco.... al banco 1
	movlw	b'11111'		; 
	movwf	TRISA			; PORTA es una entrada de datos
	bcf		STATUS,RP0
	
	
	
aqui
	movf	PORTA,W         ; W <- b'00001101'
	movwf	var1	
	btfss	var1,0
	goto	escero	
Esuno	
	B..........
	..........
	..........
	goto	aca	
escero	
	A..........
	..........
	..........
Aca	
	C..........
	..........
	goto	aqui
	
	
	
	
	
	
	
	
	int8 contador, var1;
	
	contador = 34;
	
	var1 = input_A();
	
	if (input(PIN_A0) == 1){
		// Hacer B
	} else {
		// Hacer A	
	}
	
	// Coninua haciendo C