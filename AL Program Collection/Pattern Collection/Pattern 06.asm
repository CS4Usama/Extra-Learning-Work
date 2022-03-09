title: Pattern
; 1
; 2 3
; 4 5 6
; 7 8 9 10


INCLUDE Irvine32.inc
.data
	cols DWORD 1
	count DWORD 1
.code
main PROC
	mov ecx,4
	outer:
		mov ebx,ecx
		mov ecx,cols
		inner:
			mov eax,count
			call WriteDec
			inc count
			mov al,' '
			call WriteChar
			loop inner

			call crlf
			inc cols
			mov ecx,ebx
		loop outer
	exit
main ENDP
END main
