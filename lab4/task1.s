.data
equal: .string"Equal"
notequal: .string"Not Equal"

.text
main:
li x10, 5 # int x = 5
li x11, 10  # int b=10  



bne x10,x11,ELSE 
addi a0, x0, 4        # print_string ecall 
la a1, equal              # string
ecall


ELSE:
addi a0, x0, 4        # print_string ecall 
la a1, notequal              # string
ecall

