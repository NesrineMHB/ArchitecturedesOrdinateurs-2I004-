
SortFile   : SortFile.o    AddList.o    ExtractMaxList.o    \
             DeleteList.o  PrintList.o  AddHeadList.o       \
             SortMaxList.o
	gcc -Wall -o SortFile         \
                     SortFile.o       \
                     AddList.o        cor_AddList.o        \
                     DeleteList.o     cor_DeleteList.o     \
                     PrintList.o      cor_PrintList.o      \
                     ExtractMaxList.o cor_ExtractMaxList.o \
                     AddHeadList.o    cor_AddHeadList.o    \
                     SortMaxList.o    cor_SortMaxList.o

SortFile.o : SortFile.c
	gcc -c -Wall SortFile.c

AddList.o : AddList.c
	gcc -c -Wall AddList.c

DeleteList.o : DeleteList.c
	gcc -c -Wall DeleteList.c

PrintList.o : PrintList.c
	gcc -c -Wall PrintList.c

ExtractMaxList.o : ExtractMaxList.c
	gcc -c -Wall ExtractMaxList.c

AddHeadList.o : AddHeadList.c
	gcc -c -Wall AddHeadList.c

SortMaxList.o : SortMaxList.c
	gcc -c -Wall SortMaxList.c

clean :
	rm -f SortFile
	rm -f SortFile.o       AddList.o     DeleteList.o   \
	      PrintList.o      SortMaxList.o AddHeadList.o  \
              ExtractMaxList.o
