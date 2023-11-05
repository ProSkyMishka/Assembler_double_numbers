.macro checking
	jal checking
.end_macro

.macro calculate(%x)
	fmv.d ft2, %x
	
	jal calculate
.end_macro