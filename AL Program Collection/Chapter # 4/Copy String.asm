TITLE: Copying a String

INCLUDE Irvine32.inc
.data
	src BYTE "This is a Source String",0
	tar BYTE SIZEOF src DUP(0)
       ;tar BYTE SIZEOF src DUP(0),0
.code
main PROC
	mov esi,0	;Index Register
	mov ecx,SIZEOF src

	L1:
		mov al,src[esi]		;Indexed Addressing
		;call writeChar		;To Print Each Character Separately
		;call crlf
		mov tar[esi],al
		inc esi
		loop  L1
	       ;loopd L1

	; Print String on Console Window
	mov edx,offset tar
	call WriteString
	call crlf
	exit
main ENDP
END main