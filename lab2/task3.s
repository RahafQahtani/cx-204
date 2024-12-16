.text
main:
li t0, 4 # Load immediate value 5 into register t0
#li t1, 0 # Load immediate value 0 into register
#li t2, 1 # Load immediate value 0 into register

slli a3 ,t0,30
xori a2, a3,1
#addi a3, t0,-1
#srl a1, a2,a3

# Print the result using a system call
li a0, 1 # System call for printing an integer

ecall
# Exit the program
li a0, 10 # System call for exit
ecall