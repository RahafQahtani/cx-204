 .data 
   value: .word 0x12345678 # Memory location storing the number 
    result: .word 0x10000100 # Memory location to store the inverted result
    .text
    main:
    la t3, value # Load the address of 'value' into t3
    lw t0, 0(t3) # Load the data from memory into t0
    sll t1, 
    #li t2, 0x10000100 # Load the address of 'value' into t0
    #lw t1, 0(t2) # Load the data from memory into t1
#     li t5,0x10000008
#     add t4,t0,t1 
#     sw t4, 0(t5)
    