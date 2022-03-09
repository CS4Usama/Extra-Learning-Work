TITLE: Display All Uppercase & Lowercase Alphabets with its ASCII Codes


INCLUDE Irvine32.inc
.data
	startUpChar  BYTE 'A'
	startLowChar BYTE 'a'
	msg1 BYTE "Uppercase Letters with ASCII Codes:",0AH,0
	msg2 BYTE "Lowercase Letters with ASCII Codes:",0AH,0
.code
main PROC
	mov edx,offset msg1
	call WriteString

	mov eax,0
	mov ecx,26
	lowDisp:
		; Display Character
		mov al,startUpChar
		call WriteChar

		; Display Tab
		mov al,09		;ASCII Code of Horizontal TAB Key
		call WriteChar

		; Display ASCII Code
		mov al,startUpChar
		call WriteDec

		inc startUpChar
		call crlf
	loop lowDisp

	call crlf
	mov edx,offset msg2
	call WriteString

	mov ecx,26
	upDisp:
		mov al,startLowChar
		call WriteChar

		mov al,09
		call WriteChar

		mov al,startLowChar
		call WriteDec

		inc startLowChar
		call crlf
	loop upDisp
	call crlf
	exit
main ENDP
END main