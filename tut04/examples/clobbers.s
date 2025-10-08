

# int main(void) {
#     int x = 5;
#     int y = 6;
#     int z = 7;
#     int res = add(5 + 6);
#     z = res + z;
#     printf("%d\n", z);
#     return 0;
# }

# int add(int x, int y) {
#     // clobbers $t0 and $t1
#     return x + y;
# }

main:
	begin
	push	$ra
	# $t0 = x
	# $t1 = y
	# $t2 = z
	# $t3 = res
	li	$s0, 5 # int x = 5;
	li	$t1, 6 # int y = 6;
	li	$s2, 7 # int z = 6;

	move	$a0, $s0
	move	$a1, $t1
	jal	add		# add(x, y)
	move	$t3, $v0
	add	$s2, $t3, $s2 	# z = res + z

	move	$a0, $s2
	li	$v0, 1
	syscall

	pop	$ra
	end

	li	$v0, 0
	jr	$ra

add:
	begin
	push	$s0
	li	$t0, 99
	li	$t1, 99
	li	$t2, 99
	li	$t3, 99

	add	$s0, $a0, $a1
	move	$v0, $s0

	pop	$s0
	end
	jr	$ra
	







