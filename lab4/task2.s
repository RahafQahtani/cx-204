.data
array : .word
.text

li x10, 0 # int i = 0;
la t0, array 
Loop:
li x7, 101 # int j = 100;
bge x10, x7, End # if(i >= j) goto End;
sw x10, 0(t0)
addi t0, t0, 4
addi x10, x10, 1 # i = i + 1;
j Loop # goto Loop; (pseudo for jal)
End: li x10, 0
