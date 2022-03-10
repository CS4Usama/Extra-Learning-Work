TITLE: Changing Character's Case using AND Operator


INCLUDE Irvine32.inc
.data
	msg1 BYTE "Enter a Lowercase Character:  ",0
	msg2 BYTE "Character in Uppercase:  ",0
	msg3 BYTE "Enter a Uppercase Character:  ",0
	msg4 BYTE "Character in Lowercase:  ",0
.code
main PROC
	; Converting Lowercase into Uppercase
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
	call crlf

	; Converting Uppercase into Lowercase
	mov eax,0
	mov edx,offset msg3
	call WriteString
	call ReadChar
	call WriteChar
	call crlf

	mov edx,offset msg4
	call WriteString
	OR al,00100000b
	call WriteChar
	call crlf
	call crlf
	exit
main ENDP
END main
