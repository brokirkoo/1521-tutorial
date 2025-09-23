	.text
main:
	# $t0 : x
	# $t1 : y
	li	$t0, 7 # x = 5
	li	$t1, 9 # y = 7

	# if (x < y) jump to print_1
	# else, jump to print_0
	blt	$t0, $t1, print_1
	j	print_0
print_1:
	li	$a0, 1
	li	$v0, 1
	syscall
	li	$a0, newline
	li	$v0, 4
	syscall
	j	if_end
print_0:
	li	$a0, 0
	li	$v0, 1
	syscall
	li	$a0, '\n'
	li	$v0, 11
	syscall
if_end:

	li	$v0, 0
	jr	$ra
	
	.data
newline:
	.asciiz "\n"