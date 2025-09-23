main:
	li 	$t0, 0
my_add:
	addi 	$t0, $t0, 1

	li	$v0, 1
	move	$a0, $t0
	syscall

	li	$v0, 11
	li	$a0, '\n'
	syscall

	la	$t1, my_add
	jr	$t1
	# j 	my_add

	# return 0
	li	$v0, 0
	jr	$ra # jumping back
	            # to the emulator's address
	# giving control back to the 
	# mipsy emulator