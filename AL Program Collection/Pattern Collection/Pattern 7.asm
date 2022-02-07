title: Pattern
; 1
; 1 2
; 1 2 3
; 1 2 3 4
; 1 2 3 4 5


INCLUDE Irvine32.inc
.data
	cols DWORD 1
	count DWORD ?
.code
main PROC
	mov ecx,5
	outer:
		mov ebx,ecx
		mov ecx,cols
		mov count,1
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