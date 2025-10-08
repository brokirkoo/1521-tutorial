# struct board_tracker {
#     int is_filled_row[MAX_BOARD_LEN][MAX_NUM_DIGITS]; // 4 * 16 * 16 
#     int is_filled_col[MAX_BOARD_LEN][MAX_NUM_DIGITS]; // 4 * 16 * 16
#     int is_filled_box[MAX_NUM_DIGITS][MAX_NUM_DIGITS]; // 4 * 16 * 16
#     char board[MAX_BOARD_LEN][MAX_BOARD_LEN]; // 1 * 16 * 16
# };


	la	$t0, board_tracker
	addi	$t0, $t0, BOARD_OFFSET

	.data

board_tracker:
	.space 1024 # is_filled_row
	.space 1024 # is_filled_col
	.space 1024 # is_filled_box
	.space 256 # board

# struct my_struct { 
#     int zID;            // 4 bytes
#     char first[20];     // 1 * 20 bytes
#     char last[20];      // 1 * 20 bytes
#     int program;        // 4 bytes
#     char alias[10];     // 10 bytes
# };
	.text
ALIAS_OFFSET = 48

	la	$t0, my_struct
	addi	$t0, $t0, ALIAS_OFFSET
	# $t0 = &(my_struct.alias)

	li	$v0, 4
	move	$a0, $t0
	syscall


	.data
my_struct:
	.space 58


