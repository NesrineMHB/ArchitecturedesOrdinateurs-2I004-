addi $12, $18, 33
#pas de changement dans l'onglet execute, même apes enregistrement
# Mars message : Assemble: assembling /users/nfs/Etu5/3802205/2i004/TME6/test.s
#                         Assemble: operation completed successfully.
# Le code de l'instruction est dans text segment, colonne Code : 0x224c0021 à  l'adresse 0x00400000
# codage en binaire : 001000 10010 01100 0000 0000 0010 0001

# Instruction correspondant au codage binaire inversé : Addu $0 $18 $12 : 0x024c0021

addu $0 $18 $12
# remarque : le contenu du registre zéro n'a pas changé
# erreur sur  addu $0 $18 12 :  Error in /users/nfs/Etu5/3802205/2i004/TME6/test.s line 10 column 1: 
#						  Extended (pseudo) instruction or format not permitted.  See Settings.
#						  Assemble: operation completed with errors.