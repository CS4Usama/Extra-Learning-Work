TITLE: ArraySum Procedure and Stack Concept

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

ArraySum PROC
	push esi
	push ecx
	mov eax,0
	L1:
		add eax,[esi]
		add esi,TYPE arr
		loop L1
	pop ecx		;restore ECX,ESI
	pop esi
	ret		;sum is in EAX
ArraySum ENDP

END main