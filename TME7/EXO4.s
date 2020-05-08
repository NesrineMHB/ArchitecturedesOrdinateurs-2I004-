.data 

tab : .byte 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x00

 .text
#affichage d'une chaine


lui $4 , 0x1001 
ori $2 , $0, 4
syscall
#Affichage du 3eme caractere

lb $4 2($4)

ori $2 , $0, 1
syscall
ori $2 , $0, 10
syscall 
