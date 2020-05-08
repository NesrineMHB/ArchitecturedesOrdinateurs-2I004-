.data
n : .byte 0x71
.text
# $6=i #$7 bit $8= nb=n

	xor $6 $6 $6  #i=0	
	lui $3 0x1001
	lb $8 0($3) # $8=n=nb
	ori $9 $0 8 # $9 =8
	
boucle_for :
	
	slt $10 $6 $9 #$10=1 si i<8
	beq $10 $0 fin_for
	andi $7 $8 0x1# and
	srl $8 $8 1# decalage
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
