TITLE: ArraySum Procedure and Stack Concept using USES Operator

INCLUDE Irvine32.inc
.data
	arr DWORD 10000h,20000h,30000h,40000h,50000h
	arrSum DWORD ?
.code
main PROC
	mov esi,OFFSET arr
	mov ecx,LENGTHOF arr
	call ArraySum
	mov arrSum,eax
	call WriteHex
	call crlf
	exit
main ENDP

ArraySum PROC USES esi ecx
	mov eax,0
	L1:
		add eax,[esi]
		add esi,TYPE DWORD
		loop L1
	ret	;sum is in EAX
ArraySum ENDP

END main