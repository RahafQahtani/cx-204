.data
vector1 : .word 1,2,3,4,5,6,7,8
vector2 : .word 9,10,11,12,13,14,15,16
results : .word

.text

li x10, 0 # int i = 0;
la t0, results 
la t4, vector1
la t3, vector2
Loop:
li x8, 8 # int j = 100;
bge x10, x8, End # if(i >= j) goto End;
lw t4, 0(t0)
lw t3, 0(t1)
add x13,t1,t2
sw x13, 0(t2)
addi t0, t0, 4
addi t1, t1, 4
addi t2, t2, 4
addi x10, x10, 1 # i = i + 1;
j Loop # goto Loop; (pseudo for jal)
End: li x10, 0
