INCLUDE Irvine32.inc
.data
	msg1 BYTE "Enter Some String: ",0
.data?
	msg2 BYTE 10 dup(?)
.code
main PROC
	mov edx,offset msg1
	call WriteString
	mov edx,offset msg2
	mov ecx,sizeof msg2
	call ReadString
	call WriteString
	call crlf
	exit
main endp
end main