.data
n : .word 3
p : .word 5

.text

lui $3 0x1001
lw $12 0($3)#n
lw $13 4($3)#p
	addiu $29 $29 -8
	sw $12 0($29)
	sw $13 4($29)
	jal puissance
	addiu $29 $29 8
	or $4 $2 $0
	ori $2 $0 1
	syscall
	ori $2 $0 10
	syscall
puissance :
# nv=1  nr=6    1
	addiu $29 $29 -32
	sw $31 28($29)
	sw $1 24($29)
	sw $9 20($29)
	sw $8 16($29)
	sw $7 12($29)
	sw $11 8($29)#res
	sw $6 4($29)
	sw $5 0($29)
	
	lw $5 36($29)#lecture de n
	lw $6 32($29)#lecture de x


#corps de fonction
#$5=n $6=x
	beq $5 $0 re1
	ori $1 $0 1
	beq $5 $1 ret2 
		
#appel de fct rec
	ori $8 $0 2
	addiu $29 $29 -8
	sw $6 0($29)
	div $5 $8
	mflo $7
	sw $7 4($29)
	jal puissance
	addiu $29 $29 8
		# else if
		andi $9 $5 0x01
		beq $9 $1 reif
		mult $2 $2
		mflo $2
		
	j sorif
	reif:# x*res*res
		mult $2 $2
		mflo $2
	        mult $2 $6
	        mflo $2
	 sorif:
	  
j epilogue	   	
re1: 	
	addi $2 $0 1
	
j epilogue
ret2:
	addi $2 $6  0
	
epilogue :

	lw $31 28($29)
	lw $1 24($29)
	lw $9 20($29)
	lw $8 16($29)
	lw $7 12($29)
	lw $11 8($29)#res
	lw $6 4($29)
	lw $5 0($29)
	addiu $29 $29 32
	jr $31