; Link Library Test # 3:		(TestLib3.asm)
; Calculate the Elapsed Execution Time of a Nested Loop.


INCLUDE Irvine32.inc
.data
	OUTER_LOOP_COUNT = 3
	msg1 BYTE "Please Wait...",0DH,0AH,0
	msg2 BYTE "Elapsed Milliseconds: ",0
.data?
	startTime DWORD ?
.code
main PROC
	mov edx,offset msg1	;"Please Wait..."
	call WriteString

	; Save the Starting Time
	call GetMSeconds
	mov startTime,eax

	; Start the Outer Loop
	mov ecx,OUTER_LOOP_COUNT
	L1:
		call InnerLoop
	loop L1

	; Calculate the Elapsed Time
	call GetMSeconds
	sub eax,startTime

	; Display the Elapsed Time
	mov edx,offset msg2
	call WriteString
	call WriteDec

	call crlf
	exit
main ENDP

InnerLoop PROC
	push ecx		;save current ECX value
	mov ecx,0FFFFFFFh	;set the loop counter
	L1:
		mul eax		;use up some cycles
		mul eax
		mul eax
	loop L1			;repeat the inner loop
	pop ecx			;restore ECX's saved value
	ret
InnerLoop ENDP

END main