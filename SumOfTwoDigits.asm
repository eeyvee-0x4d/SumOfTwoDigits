%include "asm_io.inc"

segment .data
num1 db 5
num2 db 4

segment .text
	global _asm_main

_asm_main:
enter 0,0
pusha
mov eax, 4 	; give eax a value of 4
add eax, 5	; add 5 to eax ex. 4 + 5
call print_int ; print the value of eax. 9
popa
mov eax,0
leave
ret
