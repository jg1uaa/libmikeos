
; @@@ void mikeos_string_chomp(char *string);

%include "os_vector.inc"

	section .text
	use16
	global	_mikeos_string_chomp

_mikeos_string_chomp:
	mov	bx, sp
	mov	ax, [ss:bx + 2]

	mov	bx, os_string_chomp
	call	bx

	ret
