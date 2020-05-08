.data
c: .word 3
n: .word 6
tab: .word 12345, 145678, 397846, 1111, 23331, 43
tab_occ: .word -1,-1,-1,-1,-1,-1

.text
xor $20 $20 $20 #i=0
lui $6 0x1001
lw $5 0($6) #recupere la valeur de c dan $5
lw $7 4($6)#recupere la valeur de n dan $7
addi $21  $6 8#recupere ladresse de tab  dan $21

#boucle for
boucle_for :
slt $23 $7 $20  #$23=1 if N<i
bne $23 $0 fin_boucleFOR
xor $4 $4 $4 # cpt=0
lw $24 0($21)#tmp = tab[i]

boucle1:
beq  $24 $0  fin_boucle 
div  $24 $10
mfhi $9#r = tmp % 10
mflo $24#tmp = tmp / 10

bne $5 $9 fin_if
addi $4 $4 1

fin_if :
j boucle1
fin_boucle:
sw $4 24($21)#ecrire  tab_occ[i] = cpt

addi $21 $21 4 #ladresse  prochaine entier 

ori $2 $0 1# affchage de cpt
syscall
addi $20 $20 1
J boucle_for
fin_boucleFOR:
#affichage espace 

ori $2 $0 10
syscall
