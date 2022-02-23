INCLUDE Irvine32.inc
;option casemap:none

;.386		;x86
;.model flat,stdcall
;.stack 4096	;4KB
;ExitProcess PROTO, dwExitProcess,DWORD
; WriteString PROTO

.data?
	var1 DWORD ?
	;var2 DWORD ?
	res DWORD ?
.data
	msg1 BYTE "Enter 1st Number: ",0
	msg2 BYTE "Enter 2nd Number: ",0
	msg3 BYTE 0AH,"Multiplaction: ",0

.code
main PROC
	
	mov edx,offset msg1
	call WriteString	;writestring >>edx
	call ReadInt		;readInt eax
	mov var1,eax

	mov edx,offset msg2
	call WriteString
	call ReadInt
	imul eax,var1

	mov edx,offset msg3
	call WriteString

	mov res,eax
	call WriteInt
	call crlf

	exit
main ENDP
end main