# vnnn

.data
c: .word 0xa
n: .word 0xa
.text
xor $4 $4 $4 # cpt=0
lui $6 0x1001
lw $5 0($6) #recupere la valeur de c dan $5
lw $7 4($6)# recupere la valeur de n dan $7
bne $5 $7 fin_if
addi $4 $4 1

fin_if :

ori $2 $0 1
syscall

ori $2 $0 10
syscall