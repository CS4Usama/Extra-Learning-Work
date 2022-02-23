; c = (f-32)*5/9
include irvine32.inc
.data
	msg1 byte "Enter Temperature in Fahrenheit: ",0
	msg2 byte "Temperature in Centigrade: ",0

.code
main proc
	mov edx,offset msg1
	call WriteString
	call ReadInt 
	sub eax,32
	mov ebx,5
	imul eax,ebx
	mov ebx,9
	mov edx,0
	idiv ebx
	mov edx,offset msg2
	call WriteString
	call WriteDec

	call crlf
	exit
main endp
end main