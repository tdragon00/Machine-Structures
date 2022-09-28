	.data
str:	.asciiz		"abc"
	.text 
	 li		$v0,4
	 la  		$a0,str
	syscall
