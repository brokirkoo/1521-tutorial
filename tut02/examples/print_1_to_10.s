# int main(void) {
# 	printf(int i = 0; i < 10; i++) {
# 		printf("%d\n");
# 	}
# }

main:
	# $t0 = 0
for_loop_init:
	li	$t0, 0
for_loop_cond:
	blt	$t0, 10, for_loop_body
	j	for_loop_end
for_loop_body:
	li	$v0, 1
	move	$a0, $t0
	syscall

	li	$v0, 11
	li	$a0, '\n'
	syscall
for_loop_incr:
	addi	$t0, $t0, 1
	j	for_loop_cond
for_loop_end:
	li	$v0, 0
	jr	$ra