.data
n : .byte 0x71
espace : .space 3
tab : .word 0,0,0,0,0,0,0,0

.text
# $6=i #$7 bit $8= nb=n

	xor $6 $6 $6  #i=0	
	lui $3 0x1001
	addi $14 $3 4 # @tab
	lbu $8 0($3) # $8=n=nb
	ori $9 $0 8 # $9 =8
	ori $13 $0 7
boucle_for :
	
	slt $10 $6 $9 #$10=1 si i<8
	beq $10 $0 fin_for
	andi $7 $8 0x1# and
	srl $8 $8 1# decalage

	sub $12 $13 $6# 7-i
	sll $12 $12 2
	add $15 $14 $12# adresse de 7-i $15
	sw $7 0($15) # tab [7-i]=bit

	ori $4 $7 0
	ori $2 $0 1
	syscall
	ori $4 $0 0x20
	ori $2 $0 11
	syscall
	
	addi $6 $6 1 #i++
j boucle_for 
fin_for:
	ori $2 $0 10
	syscall
