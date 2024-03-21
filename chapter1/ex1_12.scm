#lang scheme

(define (pascal column depth)
    (cond ((= depth column ) 1)
          ((= column 0) 1)
          (else (+ (pascal (- column 1) (- depth 1)) (pascal column (- depth 1)))))
)
(pascal 2 3)