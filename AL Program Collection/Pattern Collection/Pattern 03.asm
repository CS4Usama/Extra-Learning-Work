title: Pattern
; $$$$$
; $$$$
; $$$
; $$
; $


INCLUDE Irvine32.inc
.data
	temp DWORD 5
.code
main PROC
	mov ecx,5
	outer:
		mov ebx,ecx
		mov ecx,temp
		inner:
			mov al,'$'
			call WriteChar
			loop inner

			call crlf
			dec temp
			mov ecx,ebx
		loop outer
	exit
main ENDP
END main
