	.text
main:	
	li	$v0, 4		# $v0 = 4
	la	$a0, string1	# $t0 = string1
	syscall
	# as a function call,
	# syscall(4, string1)

	li	$v0, 0
	jr	$ra

	.data
string1:
	.asciiz "This is my string"
