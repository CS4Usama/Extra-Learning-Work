COMMENT;
	Write a program in which Pizza, Burger and Soft Drink price
	is mentioned, the user will enter its quantity and then the
	total bill is calculated according to prices. Discounts can
	be given according to a specific condition. ;


INCLUDE Irvine32.inc
.data
	msg1 BYTE "Pizza       =>  Rs. 500", 0AH,
		  "Burger      =>  Rs. 300", 0AH,
		  "Soft Drink  =>  Rs. 100 ", 0AH,0
	msg2 BYTE "Enter Pizza Quantity:  ",0
	msg3 BYTE "Enter Burger Quantity:  ",0
	msg4 BYTE "Enter Soft Drink Quantity:  ",0

	msg5 BYTE "Total Bill:  Rs.",0
	msg6 BYTE "Your bill is greater than Rs.2000, so, you'll get a 10% discount of:  Rs.",0
	msg7 BYTE "Your Final Bill is:  Rs.",0

	pizza  DWORD 500
	burger DWORD 300
	drink  DWORD 100
.data?
	discount DWORD ?
	bill DWORD ?
.code
main PROC
	mov edx,offset msg1
	call WriteString
	call crlf

	mov edx,offset msg2
	call WriteString
	call ReadInt
	imul eax,pizza
	mov ebx,eax		;ebx = pizza price

	mov edx,offset msg3
	call WriteString
	call ReadInt
	imul eax,burger
	add eax,ebx
	mov ecx,eax		;ecx = pizza & burger price

	mov edx,offset msg4
	call WriteString
	call ReadInt
	imul eax,drink
	add eax,ecx
	call crlf
	mov bill,eax

	cmp eax,2000
		jg  Greater
		jmp Lesser
			Greater:
				mov edx,offset msg5
				call WriteString
				call WriteDec
				call crlf

				mov edx,offset msg6
				call WriteString

				imul eax,10
				mov ebx,100
				mov edx,0
	               		div ebx
	               		call WriteDec		;eax hold discount
	               		call crlf

				; Subtract Discount from Bill
	               		mov discount,eax
	               		mov eax,bill
	               		sub eax,discount
	               		call crlf

				mov edx,offset msg7
				call WriteString
				call WriteDec
				call crlf
				jmp quit
			Lesser:
				mov edx,offset msg7
				call WriteString
				mov eax,bill
				call WriteDec
				call crlf
				jmp quit
	quit:
	exit
main ENDP
END main