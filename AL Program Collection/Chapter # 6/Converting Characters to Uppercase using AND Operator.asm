TITLE: Converting Characters to Uppercase using AND Operator


INCLUDE Irvine32.inc
.data
	msg1 BYTE "Enter a Lowercase Character:  ",0
	msg2 BYTE "Character in Uppercase:  ",0
.code
main PROC
	mov eax,0
	mov edx,offset msg1
	call WriteString
	call ReadChar
	call WriteChar
	call crlf

	mov edx,offset msg2
	call WriteString
	AND al,11011111b
	call WriteChar
	call crlf
	exit
main ENDP
END main