TITLE: 4.9.1 Short Answer - Question # 11

INCLUDE Irvine32.inc
.data
	dVal DWORD ?
.code
main PROC

	COMMENT; x86 Processors use Little-Endian Order to store values
		 in memory. Values will be stored in reverse order in
		 memory (5678,1234). ;

	mov dVal,12345678h
	mov ax,WORD PTR dVal+2
	add ax,3
	;call writeHex
	;call crlf
	mov WORD PTR dVal,ax
	mov eax,dVal
	call writeHex
	call crlf

	exit
main ENDP
END main