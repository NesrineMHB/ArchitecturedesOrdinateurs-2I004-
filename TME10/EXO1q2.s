.data 
ch1 : .asciiz "machainech"
ch2 : .asciiz "deuxiemechaine"
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
 	
 	

 	ori $17 $3 11 #@ch2
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
 	
#void f(char*ch)
 #epilogue
 
 #nb registre 6+1($31)
  f :	
 	addiu $29 $29 -20
 	sw $31 16($29)
 	sw $10 12($29)
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
 	subu $10 $9 $11#ch[i] - 0x20
 	sb $10 0($7)
 	addi $7 $7 1# ladresse du car suivant 
 j while 
 fin_while :
 
 
 	#prologue
 	#relire les registre
 	lw $31 16($29)
 	lw $10 12($29)
 	lw $11 8($29)
 	lw $9 4($29)
 	lw $7 0($29)
 	addiu $29 $29 20
	 jr $31


 	
 
 	
 	
 
 