.data 
ch : .asciiz "machainech"
.text
 
 	xor $6 $6 $6 # i=0
 	lui $3 0x1001 # $3 ladresse du debut
 	#affichage de ch
 	ori $4 $3 0# mettre ladresse du debut de ch dans $4
 	ori $2 $0 4
 	syscall
 	
 	#boucle while
 	ori $7 $3 0# ladresse du debut
 	#ori $8 $0 0x00#fin de chaine
 	ori $11 $0 0x20
 while :
 	lbu $9 0($7)#recuperation des ch[i]
 	beq $9 $0 fin_while
 	subu $10 $9 $11#ch[i] - 0x20
 	sb $10 0($7)
 	addi $7 $7 1# ladresse du car suivant 
 j while 
 fin_while :
 
 	#affichage
 	ori $2 $0 4
 	syscall
 	
 	ori $2 $0 10
 	syscall