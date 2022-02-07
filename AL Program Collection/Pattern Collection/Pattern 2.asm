title: Pattern
; $
; $$
; $$$
; $$$$


INCLUDE Irvine32.inc
.data
	temp DWORD 1
.code
main PROC
	mov ecx,4
	outer:
		mov ebx,ecx
		mov ecx,temp
		inner:
			mov al,'$'
			call WriteChar
			loop inner

			call crlf
			mov ecx,ebx
			inc temp
		loop outer
	exit
main ENDP
END main