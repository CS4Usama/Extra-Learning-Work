TITLE: Compare Two Numbers which one is Greater, Smaller or Equal


INCLUDE Irvine32.inc
.data
	msg1 BYTE "Enter First  Value:  ",0
	msg2 BYTE "Enter Second Value:  ",0
	msg3 BYTE "First Value is Greater",0
	msg4 BYTE "First Value is Smaller",0
	msg5 BYTE "Both Values are Equal",0
.code
main PROC
	mov edx,offset msg1
	call WriteString
	call ReadInt
	xchg ebx,eax

	mov edx,offset msg2
	call WriteString
	call ReadInt

	cmp ebx,eax
		jz destEqual
		jc destSmaller
		jmp destGreater
			destEqual:
				mov edx,offset msg5
				call WriteString
				call quit
			destSmaller:
				mov edx,offset msg4
				call WriteString
				call quit
			destGreater:
				mov edx,offset msg3
				call WriteString
	quit:
	call crlf
	exit
main ENDP
END main