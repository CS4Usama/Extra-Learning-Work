TITLE: Check whether Character is Vowel or Consonant


INCLUDE Irvine32.inc
.data
	msg1 BYTE "Enter a Character:  ",0
	msg2 BYTE "Character is Vowel",0
	msg3 BYTE "Character is Consonant",0
.code
main PROC
	mov edx,offset msg1
	call WriteString
	call ReadChar
	call WriteChar
	call crlf
	call Vowel_Func
	exit
main ENDP

Vowel_Func PROC
		cmp al,'a'
		jz destVowel

		cmp al,'e'
		jz destVowel

		cmp al,'i'
		jz destVowel

		cmp al,'o'
		jz destVowel

		cmp al,'u'
		jz destVowel

		cmp al,'A'
		jz destVowel

		cmp al,'E'
		jz destVowel

		cmp al,'I'
		jz destVowel

		cmp al,'O'
		jz destVowel

		cmp al,'U'
		jz destVowel

		jmp Consonant
	ret
Vowel_Func ENDP

	destVowel:
		mov edx,offset msg2
		call WriteString
		call crlf
		call quit
	Consonant:
		mov edx,offset msg3
		call WriteString
		call crlf
		call quit
	quit:

END main