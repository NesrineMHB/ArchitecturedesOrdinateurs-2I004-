
/* ###--------------------------------------------------------------### */
/* file		: SortMaxList.c						*/
/* description	: list function						*/
/* ###--------------------------------------------------------------### */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "list.h"

struct list *SortMaxList (struct list *pt_l)

	/* ###------------------------------------------------------### */
	/*  Il s'agit d'une fonction iterative. A chaque iteration,	*/
	/*  elle recupere l'element maximal de la liste `pt_l' en	*/
	/*  appelant la fonction `ExtractMaxList`. Puis, ajoute cet	*/
	/*  element a la tete d'une nouvelle liste en appelant		*/
	/*  `AddHeadList`. Ainsi, l'element maximal sera supprime de	*/
	/*  la liste `pt_l` et ajoute a la liste triee en cours de	*/
	/*  construction. Les iterations continuent jusqu'a ce que	*/
	/*  `pt_l` soit vide.						*/
	/*								*/
	/*  Cette fonction renvoie le pointeur sur la liste triee.	*/
	/* ###------------------------------------------------------### */
  {
  }
