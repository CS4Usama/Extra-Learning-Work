TITLE: Reversing a String using Stack & Loop

INCLUDE Irvine32.inc
.data
	msg BYTE "Cyber Hawk",0
	msgSize = ($ - msg) - 1
.code
main PROC
	; Display String (Before Reversing)
	mov edx,offset msg
	call WriteString
	call crlf

	mov ecx,msgSize
	mov esi,0
	L1:
		movzx eax,msg[esi]
		push eax
		inc esi
		loop L1

	mov ecx,msgSize
	mov esi,0
	L2:
		pop eax
		mov msg[esi],al
		;call WriteChar		;Display Character by Character
		inc esi
		loop L2

	; Display String (After Reversing)
	mov edx,offset msg
	call WriteString
	call crlf
	exit
main ENDP
END main