TITLE: Find Area of Rectangle in User-Defined Function

INCLUDE Irvine32.inc
.data
	msg1 byte "Enter Length: ",0
	msg2 byte "Enter Width: ",0
	msg3 byte "Area of Rectangle is: ",0
.code
main PROC
	mov edx,offset msg1
	call WriteString
	call ReadInt
	mov ebx,eax
	mov edx,offset msg2
	call WriteString
	call ReadInt
	call RectangleArea
	call crlf
	exit
main ENDP

RectangleArea PROC
	mov edx,offset msg3
	call WriteString
	mul ebx		;imul eax,ebx
	call WriteDec
	ret
RectangleArea ENDP

END main