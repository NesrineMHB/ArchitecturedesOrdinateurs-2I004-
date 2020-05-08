.data

v3 : .byte  0xFF

.text

lui $3 , 0x1001
lb $7 , 0($3)    # $7= v3 signé
or $4 , $0, $7
ori $2 , $0, 1 # à l'affichage on a -1 car la commande lb lit de la memoire et fait une extention signé en copiant le bit de poid fort qui est le 1
syscall

lbu $8 , 0($3)    # $7= v3 non_signé
or $4 , $0, $8
ori $2 , $0, 1  # à l'affichage on a 255  car la commande lbu lit de la memoire et ne  fait pas d'extention signé (copit 0 sur le reste des bit a gauche)
syscall

ori $2 , $0, 10
syscall
