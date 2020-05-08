.data 
p : .word 5
.text
#main
	lui $3 0x1001
	lw $7 0($3)
	addiu $29 $29 -4
	sw $7 0($29)
	jal fact
	addiu $29 $29 4
	or $4 $2 $0
	ori $2 $0 1
	syscall
	ori $2 $0 10
	syscall


# nv=0 nr= 2
fact :
	addiu $29 $29 -12
	sw $31 8($29)
	sw $6 4($29)
	sw $5 0($29)
	
	lw $5 12($29)#lecture de n
	
# la fonction 
# $5=n
	beq $5 $0 return1
	#else
	addi $6 $5 -1
	addiu $29 $29 -4
	sw $6 0($29)
	jal fact
	addiu $29 $29 4
	mult $5 $2
	mflo $2
j epilogue 
return1:
	addi $2 $0 1
	
epilogue :
	
	lw $31 8($29)
	lw $6 4($29)	
	lw $5 0($29)
	addiu $29 $29 12
	
	jr $31