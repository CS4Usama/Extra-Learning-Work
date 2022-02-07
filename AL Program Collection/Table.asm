INCLUDE Irvine32.inc
.data
	msg1 BYTE "Enter Number to Write Table: ",0
	msg2 BYTE "Enter Table Length: ",0
	msg3 BYTE " X ",0
	msg4 BYTE " = ",0
.data?
	num DWORD ?
.code
main PROC
	mov edx,offset msg1
	call WriteString
	call ReadInt

	mov num,eax
	mov ebx,1

	mov edx,offset msg2
	call WriteString
	call ReadInt
	mov ecx,eax

	table:
		mov eax,num
		call WriteDec
		mov edx,offset msg3
		call WriteString
		mov eax,ebx
		call WriteDec
		mov edx,offset msg4
		call WriteString

		mov eax,num
		imul eax,ebx
		call WriteDec
		call crlf
		inc ebx
		loop table
	exit
main ENDP
END main