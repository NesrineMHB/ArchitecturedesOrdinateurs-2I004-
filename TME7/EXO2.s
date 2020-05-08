.data

v1 : .word -1
v2 : .word 0xFF

.text

lui $3 , 0x1001
lw $5 , 0($3)    # $5= v1
# Question 2
addi $5 , $5 ,1

or $4 , $0, $5
ori $2 , $0, 1
syscall

lw $6 , 4($3)  # $6= v2
# Question 2
addi $6 , $6 ,1

or $4 , $0, $6
ori $2 , $0, 1
syscall

ori $2 , $0, 10
syscall


