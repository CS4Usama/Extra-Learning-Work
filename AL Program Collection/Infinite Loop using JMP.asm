INCLUDE Irvine32.inc
.code
main PROC
	mov eax,0
	top:
		inc eax
		call WriteDec
		call crlf
		JMP top
	exit
main endp
end main