INCLUDE Irvine32.inc
.data
	msg1 byte "Enter Any Number: ",0
	msg2 byte "The Factorial of Given Number is: ",0
.code
main PROC
	mov edx,offset msg1
	call WriteString
	call ReadInt		;cin>>eax

	;5! = 5*4*3*2*1
	;C++
	;f=1
	;for(i=num; i>=1; i--)
	;f = f*i

	mov ecx,eax
	mov eax,1

	fact:
		imul eax,ecx	;mul ecx
		  ;call WriteDec
		  ;mov ebx,eax
		  ;mov al,' '
		  ;call WriteChar
		  ;mov eax,ebx
		loop fact

	;call crlf
	mov edx,offset msg2
	call WriteString
	call WriteDec
	call crlf
	exit
main ENDP
END main