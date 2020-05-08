.data
min : .space 1
max :.space 1
b: .space 1
char_c : .byte 'e'
.text
 ori $2 $0 12
 syscall
 or  $4 $2 $0# $4 cmin
 ori $2 $0 12
 syscall
  or  $3 $2 $0# $3cmax
  lui $7 0x1001
  lbu $6 3($7)# c
  
  slt $8 $4  $6 # $8=1 si cmin<c
  slt $9 $6 $3#
  ori $1 $0 1
  bne $8 $1 bou1
  bne $9 $1 sinon
and $4 $8 $9
j boucle
bou1 :
sinon :
xor $4 $4 $4

boucle:
 ori $2 $0 1
syscall

ori $2 $0 10
syscall
