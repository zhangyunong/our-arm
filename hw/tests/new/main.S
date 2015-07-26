	.globl	_start
_start:
	bl	f

	b	pass

fail:
	mov	r11, #0xf0000000
        str     r10, [r11]
        b       fail
        
pass:
	mov	r11, #0xf0000000
        mov     r10, #17
        str     r10, [r11]
        b       pass
