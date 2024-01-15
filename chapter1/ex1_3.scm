#lang scheme

(define ( square a)
    (* a a)
)

(define (sumOfTwoLargest a b c)

    (if ( < a b ) 
        ( + ( square b ) 
            ( square 
                ( if ( < a c ) c a )
            )
        )
        ( + ( square a ) 
            ( square 
                ( if ( < b c ) c b )
            )
        )
    )
)

(sumOfTwoLargest 1 2 3)