.data
c: .word 0
n: .word 133353
.text
xor $4 $4 $4 # cpt=0
lui $6 0x1001
lw $5 0($6) #recupere la valeur de c dan $5
lw $7 4($6)#recupere la valeur de n dan $7
add $8 $0 $7#tmp=n
#$9=r
addi $10 $0 10 # $10=10
#calcul du nombre d’occurrences de c*/

boucle1:
blez $8 fin_boucle 
div  $8 $10
mfhi $9#r = tmp % 10
mflo $8#tmp = tmp / 10

bne $5 $9 fin_if
addi $4 $4 1

fin_if :
j boucle1
fin_boucle:

ori $2 $0 1
syscall

ori $2 $0 10
syscall