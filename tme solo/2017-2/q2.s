.data
min : .space 1
max :.space 1
b: .space 1
char_c : .byte 'h'

.text
 ori $2 $0 12
 syscall
 or  $4 $2 $0# $4 cmin
 ori $2 $0 12
 syscall
  or  $3 $2 $0# $3cmax
  
  slt $10 $4 $3 # =1 si c1<c2
  lui $7 0x1001
  beq $10 $0 sinon
 sb $4 0($7)# cmin
 sb $3 4($7) #cmax
 j finb
  sinon:
  sb $3 0($7)# cmin
 sb $4 4($7) #cmax
  finb:
  #max
  ori $4 $7 0
ori $2 $0 4
syscall
# min
  ori $4 $7 4
ori $2 $0 4
syscall
lbu $4 0($7)
lbu $3 1($7)

  lbu $11 3($7)# c

  slt $8 $4  $11 # $8=1 si cmin<c
  slt $12 $11 $3#
  ori $1 $0 1
  bne $8 $1 bou1
  bne $12 $1 sinon1
and $4 $8 $12
j boucle
bou1 :
sinon1 :
xor $4 $4 $4
boucle:

 ori $2 $0 1
syscall

ori $2 $0 10
syscall


  
  
 