.data 
value: .word 0x12345678 # Memory location storing the number 42
result: .word 0x87654321 # Memory location to store the inverted result
.text
main:
la t0, value # Load the address of 'value' into t0
lw t1, 0(t0) # Load the data from memory into t1
la t3, result # Load the address of 'result' into t3
sw t2, 0(t3) # Store the inverted value from t2 into memory
