COMMENT;
	Write a program to read a character in lowercase then display
	its ASCII code and convert it into uppercase, display the
	converted letter with its ASCII code. ;


INCLUDE Irvine32.inc
.data
	msg1 BYTE "Enter a Lowercase Character:  ",0
	msg2 BYTE "The ASCII Code of Lowercase Character:  ",0
	msg3 BYTE "Character in Uppercase:  ",0
	msg4 BYTE "The ASCII Code of Uppercase Character:  ",0
.code
main PROC
	mov edx,offset msg1
	call WriteString

	; Display Lowercase Character
	mov eax,0
	call ReadChar
	call WriteChar
	call crlf

	; Display Lowercase Character's ASCII Code
	mov edx,offset msg2
	call WriteString
	call WriteDec
	call crlf
	call crlf

	; Display Uppercase Character
	mov edx,offset msg3
	call WriteString
	sub eax,32
	call WriteChar
	call crlf

	; Display Uppercase Character's ASCII Code
	mov edx,offset msg4
	call WriteString
	call WriteDec
	call crlf
	call crlf
	exit
main ENDP
END main