title: Pattern
; $$$$
; $$$$
; $$$$


INCLUDE Irvine32.inc
.code
main PROC
	mov ecx,3
	outer:
		mov ebx,ecx
		mov ecx,4
		inner:
			mov al,'$'
			call WriteChar
			loop inner

			call crlf
			mov ecx,ebx
		loop outer
	exit
main ENDP
END main