main:
	# $t0 : x
	# $t1 : y

	la	$a0, string1
	li	$v0, 4 # printing str
	# remembering, $v0 dictates
	# what system call
	syscall

	li	$v0, 5 # reading int
	syscall
	# $v0 should have the 
	# 'read in integer
	move	$t0, $v0 # $t0 = $v0

	# y = x * x
	mul	$t1, $t0, $t0
	
	# printf("%d\n", y)
	li	$v0, 1
	move	$a0, $t1
	syscall

	li	$a0, '\n'
	li	$v0, 11
	syscall

	li	$v0, 0
	jr 	$ra 

	.data
string1:
	.asciiz "Enter a number: "