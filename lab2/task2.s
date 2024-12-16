.text
main:
li t0, 10 # Load immediate value 5 into register t0
li t1, 0 # Load immediate value 0 into register
li t2, 1 # Load immediate value 0 into register
sub a2, t1,t0 # a1 <= t0 +1
sub a1, a2,t2
# Print the result using a system call
li a0, 1 # System call for printing an integer
ecall
# Exit the program
li a0, 10 # System call for exit
ecall
