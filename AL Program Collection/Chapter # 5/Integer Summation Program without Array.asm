TITLE: Integer Summation Program without Array

INCLUDE Irvine32.inc
.data
	prompt1 BYTE "How many numbers you want to add?  ",0
	prompt2 BYTE "Enter Number:  ",0
	prompt3 BYTE "Sum of All the Integers:  ",0
.code
main PROC
	call PromptForIntegers
	call DisplaySum
	call crlf
	exit
main ENDP

PromptForIntegers PROC USES eax ecx edx
	mov edx,OFFSET prompt1
	call WriteString
	call ReadInt
	call crlf
	mov ecx,eax
	mov ebx,0
	L1:
		mov edx,OFFSET prompt2
		call WriteString
		call ReadInt
		add ebx,eax
		loop L1
	call crlf
	ret
PromptForIntegers ENDP

DisplaySum PROC
	pushad
	mov edx,OFFSET prompt3
	call WriteString
	mov eax,ebx
	call WriteInt
	call crlf
	popad
	ret
DisplaySum ENDP

END main