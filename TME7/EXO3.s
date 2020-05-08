.data

#ch : .asciiz "coucou"
nv : .space 10
.text

lui $4 , 0x1001 # mettre l'adresse du debuu de chaine dans $4
ori $5 , $0, 10   # mettre la longueur de la chaine dans $5

#lecture d'une chaine
ori $2 , $0, 8
syscall

ori $2 , $0, 10
syscall

