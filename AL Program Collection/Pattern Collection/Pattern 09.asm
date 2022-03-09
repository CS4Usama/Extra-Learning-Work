title: Pattern
; $ $ $ $ $
;  $ $ $ $
;   $ $ $
;    $ $
;     $


INCLUDE Irvine32.inc
.data
	col DWORD 5
	spCount DWORD 1
.code
main PROC
	mov ecx,5
	Outer:
		push ecx
		mov ecx,spCount

		Inner1:
			mov al,' '
			call WriteChar
		loop Inner1

		inc spCount
		mov ecx,col

		Inner2:
			mov al,'$'
			call WriteChar
			mov al,' '
			call WriteChar
		loop Inner2

		call crlf
		dec col
		pop ecx
	loop Outer
	exit
main ENDP
END main
