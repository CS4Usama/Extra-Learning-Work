TITLE: 4.5.6 Section Review - Question # 10

INCLUDE Irvine32.inc
.code
main PROC
	mov eax,0
	mov ecx,10		; outer loop counter

	L1:
		push ecx
		mov eax,3
		mov ecx,5		; inner loop counter

		L2:
			add eax,5
			call writeHex
			call crlf
		loop L2		; repeat inner loop
		call crlf
		pop ecx
	loop L1

	exit
main ENDP
END main