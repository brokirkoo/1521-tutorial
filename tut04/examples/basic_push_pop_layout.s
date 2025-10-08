func:
	# $s0-9 registers to be saved
	# so for any $s0 register we use

	begin
	push	$ra
	push	$s0
	push	$s1

	# func body

	# int print_num(int x);

	li	$a0, 5 # print_num(5);
	jal	print_num # returns int in $v9
	move	$a0, $v0
	li	$v0, 1
	syscall

	# pop in reverse order (stack FILO)
	pop	$s1
	pop	$s0
	pop	$ra

	end

	li	$v0, 0
	jr	$ra
