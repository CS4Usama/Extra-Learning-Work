TITLE: Conversion from Big Endian to Little Endian

INCLUDE Irvine32.inc
.data
	bigEndian BYTE 12h,34h,56h,78h
	littleEndian DWORD ?
.code
main PROC
	mov al,bigEndian[3]
	mov ah,bigEndian[2]
	mov WORD PTR littleEndian,ax
	call writehex
	call crlf
	mov al,bigEndian[1]
	mov ah,bigEndian[0]
	mov WORD PTR littleEndian[2],ax
	call writehex
	mov	esi,OFFSET bigEndian
		mov	ecx,LENGTHOF bigEndian
		mov	ebx,TYPE bigEndian
	call	DumpMem
	mov	esi,OFFSET bigEndian
		mov	ecx,1
		mov	ebx,TYPE DWORD
	call	DumpMem
	exit
main ENDP
END main