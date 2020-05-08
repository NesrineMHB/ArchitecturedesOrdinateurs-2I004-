
/* ###--------------------------------------------------------------### */
/* file		: list.h						*/
/* description	: list function					*/
/* ###--------------------------------------------------------------### */

#ifndef LST_LSTDEF
#define LST_LSTDEF

	/* ###------------------------------------------------------### */
	/*    defines							*/
	/* ###------------------------------------------------------### */

	/* ###------------------------------------------------------### */
	/*    data structures						*/
	/* ###------------------------------------------------------### */

struct list
  {
  struct list      *NEXT                     ;	/* next element		*/
  char             *DATA                     ;	/* data			*/
  };

	/* ###------------------------------------------------------### */
	/*    functions							*/
	/* ###------------------------------------------------------### */

extern struct list *AddList            (struct list  *pt_l  ,
                                        char          *data    );
extern struct list *cor_AddList        (struct list  *pt_l  ,
                                        char          *data    );

extern struct list *DeleteList         (struct list  *pt_l    );
extern struct list *cor_DeleteList     (struct list  *pt_l    );

extern struct list *ExtractMaxList     (struct list **pt_ptl  );
extern struct list *cor_ExtractMaxList (struct list **pt_ptl  );

extern struct list *AddHeadList        (struct list  *pt_l  ,
                                        struct list  *pt_e    );
extern struct list *cor_AddHeadList    (struct list  *pt_l  ,
                                        struct list  *pt_e    );

extern struct list *SortMaxList        (struct list  *pt_l    );
extern struct list *cor_SortMaxList    (struct list  *pt_l    );

extern void         PrintList          (struct list  *pt_l    );
extern void         cor_PrintList      (struct list  *pt_l    );

#endif
