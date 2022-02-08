title: Pattern
;    $
;   $$$
;  $$$$$
; $$$$$$$


INCLUDE Irvine32.inc
.data
	temp DWORD 1
	spVar DWORD 4
.code
main PROC
	mov ecx,4
	outer:
		mov ebx,ecx
		mov ecx,spVar
		inner1:
			mov al,20H
			call WriteChar
			loop inner1
			dec spVar
		mov ecx,temp
		inner2:
			mov al,'$'
			call WriteChar
			loop inner2

			call crlf
			mov ecx,ebx
			add temp,2
		loop outer
	exit
main ENDP
END main