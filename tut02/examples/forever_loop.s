# int main(void) {
# 	while (1) {
# 		printf("print this forever");
# 	}
# 	return 0; // never go here
# }

# loop structure in MIPS
	.text
main:
	li	$v0, 4
	la	$a0, string
	syscall

	j	main
	
	li	$v0, 0
	jr	$ra		# return 0

	.data
string:
	.asciiz "print this forever"