TITLE: Different Concepts of Adding int & char/str

INCLUDE Irvine32.inc
.code
main PROC

	; One Integer & One Char will be Added. Not both Char or Strings
	mov eax,'2'
	add eax,3
	call writeChar
	call crlf

	mov al,'0'
	add al,3
	call writeChar
	call crlf

	; Only One Last Char will be Added
	mov eax,'26'
	add eax,3
	call writeChar
	call crlf

	; When Sum Range Exceed from One Char Limit
	mov eax,'28'
	mov eax,3
	call writeChar
	call crlf

	mov eax,'2'
	mov eax,35
	call writeChar
	call crlf

	; When Both Char are Added, Second Value will always be the Result
	mov al,'3'
	mov al,'5'
	call writeChar
	call crlf

	exit
main ENDP
END main