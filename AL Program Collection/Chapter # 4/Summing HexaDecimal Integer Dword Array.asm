TITLE: Summing an Integer HexaDecimal Dword Array

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:dword
WriteHex PROTO
Crlf PROTO

.data
	intArr DWORD 10000h,
	20000h,30000h
.code
main PROC
	mov edi,offset intArr
	mov ecx,lengthOf intArr
	mov eax,0
	L1:
		add eax,[edi + type intArr]	;Indexed Operand
		;add eax,[edi+4]	;Direct-Offset Addressing
		;add eax,[edi]
		;add edi,type intArr
		loop L1
	call WriteHex
	call CRLF
	invoke ExitProcess,0
main ENDP
END main