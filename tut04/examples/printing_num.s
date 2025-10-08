main:
	begin
	push	$ra

	li	$s0, 5
	li	$s1, 6

	jal	my_func

	add	$a0, $s0, $s1
	li	$v0, 1
	syscall

	pop	$ra
	end

	li	$v0, 0
	jr	$ra

my_func:
	# must 'save'/push any $s registers i overwrite (clobber)
my_func_prologue:
	begin	# set up the stack for this function
	push	$s0
	push	$s1
my_func_body:

	li	$s0, 100
	li	$s1, 100

	add	$a0, $s0, $s1
	li	$v0, 1
	syscall

my_func_epilogue:
	pop	$s1
	pop	$s0
	end

	jr	$ra
