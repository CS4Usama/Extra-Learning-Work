INCLUDE Irvine32.inc

.data?
	var1 DWORD ?
	var2 DWORD ?
	sum DWORD ?
	minus DWORD ?
	multiply DWORD ?
	divide DWORD ?
.data
	msg1 BYTE "Enter 1st Number: ",0
	msg2 BYTE "Enter 2nd Number: ",0
	msg3 BYTE 0AH,"Sum = ",0
	msg4 BYTE 0AH,"Subtraction = ",0
	msg5 BYTE 0AH,"Multiplication = ",0
	msg6 BYTE 0AH,"Division = ",0

.code
main PROC
	mov edx,offset msg1
	call WriteString
	call ReadInt	;cin>>eax
	mov var1,eax

	mov edx,offset msg2
	call WriteString
	call ReadInt
	mov var2,eax

	add eax,var1
	mov edx,offset msg3
	call WriteString
	call WriteDec

	mov eax,var1
	sub eax,var2
	mov edx,offset msg4
	call WriteString
	call WriteDec

	mov eax,var1
	imul eax,var2
	mov edx,offset msg5
	call WriteString
	call WriteDec

	mov eax,var1
	mov edx,0
	idiv var2
	mov edx,offset msg6
	call WriteString
	call WriteDec
	call crlf
	call crlf

	exit
main ENDP
END main