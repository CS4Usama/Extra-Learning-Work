TITLE: Check whether Number is Positive, Negative or Zero


INCLUDE Irvine32.inc
.data
	msg1 BYTE "Enter a Number:  ",0
	msg2 BYTE "Number is Positive",0
	msg3 BYTE "Number is Negative",0
	msg4 BYTE "Number is Zero",0
.code
main PROC
	mov edx,offset msg1
	call WriteString
	call ReadInt
	call User_Func
	exit
main ENDP

User_Func PROC
	cmp eax,0
	jz Zero
	js Negative
	jmp Positive
		Positive:
			mov edx,offset msg2
			call WriteString
			call crlf
			JMP quit
		Negative:
			mov edx,offset msg3
			call WriteString
			call crlf
			JMP quit
		Zero:
			mov edx,offset msg4
			call WriteString
			call crlf
			JMP quit
	ret
	quit:
User_Func ENDP

END main