; 5.8 Review Questions and Exercises
; Short Question # 20


INCLUDE Irvine32.inc
.data
	array DWORD 4 DUP(0)
.code
main PROC
	mov eax,10
	mov esi,0
	call Proc_1
	add esi,4
	add eax,10
	mov array[esi],eax
	call WriteDec
	call crlf
	INVOKE ExitProcess,0
main ENDP

Proc_1 PROC
	call Proc_2
	add esi,4
	add eax,10
	mov array[esi],eax
	call WriteDec
	call crlf
	ret
Proc_1 ENDP

Proc_2 PROC
	call Proc_3
	add esi,4
	add eax,10
	mov array[esi],eax
	call WriteDec
	call crlf
	ret
Proc_2 ENDP

Proc_3 PROC
	mov array[esi],eax
	call WriteDec
	call crlf
	ret
Proc_3 ENDP

END main