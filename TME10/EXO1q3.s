.data 
ch1 : .asciiz "Une chaine_exemple"
ch2 : .asciiz "1 autre Test"
.text

 	 	#main
 	lui $3 0x1001 #ladresse du debut
 	ori $17 $3 0 #@ch1
 	addiu $29 $29 -4
 	sw $17 0($29)
 	jal f 
 	addiu $29 $29 4 #desalocation
 	
 	#affichage de ch
 	ori $4 $3 0# mettre ladresse du debut de ch dans $4
 	ori $2 $0 4
 	syscall
 	
 	

 	ori $17 $3 19 #@ch2
 	addiu $29 $29 -4
 	sw $17 0($29)
 	jal f 
 	addiu $29 $29 4 #desalocation
 	
 		#affichage de ch2
 	ori $4 $17 0# mettre ladresse du debut de ch dans $4
 	ori $2 $0 4
 	syscall
 	
 		ori $2 $0 10
 	syscall
 	
 	
 #char min_to_maj(charc) #$19=c
mintomaj :

# 6+1
	addiu $29 $29 -28
	sw $31 24($29)
 	sw $18 20($29)
 	sw $17 16($29)
 	sw $22 12($29)
 	sw $21 8($29)
 	sw $20 4($29)
 	sw $19 0($29)
 	
 	#lecture des paramettres de la foction (un byte)
 	#elle prend ladresse du debut qui est stockée en sommet => $29+28
 	lbu $19 28($29) # c lw car on recupere ladresse et pas le char

 	ori $20 $0 'a'
 	ori $21 $0 'z'
 	slt  $18 $20 $19 #$18=1 c >= ’a’
 	slt  $17 $19 $21#$17=1 c <= ’z’
 	and $22 $17 $18 # $22=1 si les deux sont vrai 
 	ori $11 $0 0x20
 	beq $22 $0 else
 	subu $2 $19 $11
 j fin
else :
	ori $2 $19 0
 fin :	
 
 
 #prologue
 	#relire les registre
 	lw $31 24($29)
 	lw $18 20($29)
 	lw $17 16($29)
 	lw $22 12($29)
 	lw $21 8($29)
 	lw $20 4($29)
 	lw $19 0($29)
 	addiu $29 $29 28
	 jr $31

 
 # ////////////
 
#void f(char*ch)
 #epilogue
 
 #nb registre 6+1($31)
  f :	
 	addiu $29 $29 -20
 	sw $31 16($29)
 	sw $25 12($29)
 	sw $11 8($29)
 	sw $9 4($29)
 	sw $7 0($29)
 	
 	#lecture des paramettres de la foction (un byte)
 	#elle prend ladresse du debut qui est stockée en sommet => $29+28
 	lw $7 20($29) # c lw car on recupere ladresse et pas le char

 	#while
 	ori $11 $0 0x20
 while :
 	lbu $9 0($7)#recuperation des ch[i]
 	beq $9 $0 fin_while
 	
 	addiu $29 $29 -4
 	lbu $25 0($7)#s[i]
 	sw $25 0($29)
 	jal mintomaj  
 	addiu $29 $29 4 #desalocation
 	

 		#recuperation du char
 		sb  $2 0($7) #s[i] = min_to_maj(s[i])
 
 	addi $7 $7 1# ladresse du car suivant 
 j while 
 fin_while :
 
 
 	#prologue
 	#relire les registre
 	lw $31 16($29)
 	lw $25 12($29)
 	lw $11 8($29)
 	lw $9 4($29)
 	lw $7 0($29)
 	addiu $29 $29 20
	 jr $31


 	
 
 	
 	
 
 