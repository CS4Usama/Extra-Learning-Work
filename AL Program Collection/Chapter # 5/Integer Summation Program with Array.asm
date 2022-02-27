TITLE: Integer Summation Program with Array

COMMENT ;
	This program inputs multiple integers from the user
	and stores them in an array. Calculate the sum of the
	array and display it.
;


INCLUDE Irvine32.inc

IntegerCount = 3	; array size

.data
	prompt1 BYTE  "Enter a Signed Integer:  ",0
	prompt2 BYTE  "Sum of the Integers is:  ",0
	array   DWORD  IntegerCount DUP(?)
.code
main PROC
	call Clrscr
	mov  esi,OFFSET array
	mov  ecx,IntegerCount
	call PromptForIntegers
	call ArraySum
	call Crlf
	call DisplaySum
	call Crlf
	exit
main ENDP

;-----------------------------------------------------
; Prompts the user for an array of integers, and fills
; the array with the user's input.
; Receives: ESI points to the array, ECX = array size
; Returns:  nothing
;-----------------------------------------------------
PromptForIntegers PROC
	pushad		; save all registers

	mov  edx,OFFSET prompt1		; address of the prompt
	cmp  ecx,0		; array size <= 0?
	jle  label2		; yes: quit

	L1:
		call WriteString	; display string
		call ReadInt		; read integer into EAX
		mov  [esi],eax		; store in array
		add  esi,4		; next integer
		loop L1

	label2:
		popad		; restore all registers
	ret
PromptForIntegers ENDP

;-----------------------------------------------------
; Calculates the sum of an array of 32-bit integers.
; Receives: ESI points to the array, ECX = array size
; Returns:  EAX = sum of the array elements
;-----------------------------------------------------
ArraySum PROC
	push  esi		; save ESI, ECX
	push  ecx
	mov   eax,0		; set the sum to zero

	L1:
		add   eax,[esi]		; add each integer to sum
		add   esi,4		; point to next integer
		loop  L1		; repeat for array size

	pop   ecx		; restore ECX, ESI
	pop   esi
	ret		; sum is in EAX
ArraySum ENDP

;-----------------------------------------------------
; Displays the sum on the screen
; Recevies: EAX = the sum
; Returns:  nothing
;-----------------------------------------------------
DisplaySum PROC
	push edx
	mov  edx,OFFSET prompt2		; display message
	call WriteString
	call WriteInt		; display EAX
	call Crlf
	pop  edx
	ret
DisplaySum ENDP

END main