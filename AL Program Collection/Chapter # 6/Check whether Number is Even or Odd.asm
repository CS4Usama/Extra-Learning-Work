TITLE: Check whether Number is Even or Odd


INCLUDE Irvine32.inc
.data
	msg1 BYTE "Enter a Number:  ",0
	msg2 BYTE " is a Odd Number",0
	msg3 BYTE " is a Even Number",0
.code
main PROC
	mov ebx,2
	mov edx,offset msg1
	call WriteString

	call ReadInt		;value will be in eax
	call WriteDec		;display number
	mov edx,0		;put 0 in edx to overrride garbage value
	idiv ebx		;remainder will store in edx

	cmp edx,0		;compare with zero
		jz destEven
		jmp destOdd
			destEven:
				mov edx,offset msg3
				call WriteString
				JMP quit
           		destOdd:
				mov edx,offset msg2
				call WriteString
				JMP quit
	quit:
	call crlf
	exit
main ENDP
END main