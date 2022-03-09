title: Pattern
; A B C D
; E F G
; H I
; J


INCLUDE Irvine32.inc
.data
	char BYTE 'A'
.code
main PROC
	mov ecx,4
	outer:
		mov ebx,ecx
		inner:
			mov al,char
			call WriteChar
			inc char
			mov al,' '
			call WriteChar
			loop inner

			call crlf
			mov ecx,ebx
		loop outer
	exit
main ENDP
END main
