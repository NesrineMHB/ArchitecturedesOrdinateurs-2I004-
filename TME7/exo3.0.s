.data

ch : .asciiz "coucou"

.text

lui $4 , 0x1001 # mettre l'adresse du debut de chaine dans $4

#modifier les deux premiers caracteres

# lire les deux premiers  caracteres
lbu $5, 0($4) # lecture du 'c' et le mettre dans $5
lbu $6, 1($4) # lecture du 'o' et le mettre dans $6

# ecriture en memoire 
sb $6, 0($4) 
sb $5, 1($4) 

#affichage d'une chaine
lui $4 , 0x1001 
ori $2 , $0, 4
syscall

ori $2 , $0, 10
syscall
