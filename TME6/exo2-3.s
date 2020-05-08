#ori  $16 $0 137
#or $4 $0 $16 # coipe le contenu de $16 dans $4
#ori $2 $0 1
#syscall 

#ori $2 $0 10
#syscall

#Lorsqu'on met 1 dans $16, la nouvelle valeur de $16 n'est plus copiée dans $4,  si on fait ceci apres la copie de $16 dans $4
# Si on le fait avant, c'est la valeur 1 qui sera copiée dans $4 et elle sera affichée

# Q2 : L'immédiat est codé sur 16 bit, ainsi, la valeur maximale à coder est 2¹⁶-1. Execussion impossible, message d'erreur
# Le contenu de $16 est réinitialisé

ori  $9 $0 84
ori  $10 $0 10
div $9 $10 
mflo $11
mfhi $12

or $4 $0 $11 
ori $2 $0 1	
syscall 

or $4 $0 $12
ori $2 $0 1
syscall 

mult $11 $10
mflo $5

add $4 $5 $12
ori $2 $0 1
syscall


ori $2 $0 10
syscall
# lo  contient le quotien et hi le reste