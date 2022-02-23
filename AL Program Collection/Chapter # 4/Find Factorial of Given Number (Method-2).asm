INCLUDE Irvine32.inc
.data
	msg1 byte "Enter Any Number: ",0
	msg2 byte "The Factorial of Given Number is: ",0
.code
main PROC
	mov edx,offset msg1
	call WriteString
	call ReadInt		;cin>>eax

	;5! = 1*2*3*4*5
	;C++
	;f=1
	;for(i=1; i<=num; i++)
	;f = f*i

	mov ecx,eax
	mov eax,1
	mov ebx,1

	fact:
		imul eax,ebx	;mul ebx
		inc ebx		;add ebx,1
		;here we can't increment eax because result after multiplication is stored in eax. If we increment eax then ebx will always remains 1.
		loop fact

	mov edx,offset msg2
	call WriteString
	call WriteDec
	call crlf
	exit
main ENDP
END main