#lang scheme

(define (f n)
    (define (loop iter p pp ppp)
        (cond ((and (> n 2) (= iter n)) (+ p (* 2 pp ) (* 3 ppp)))
            ((= iter n) n)
            ((< iter 3) (loop (+ iter 1) iter p pp))
            (else (loop (+ iter 1 ) (+ p (* 2 pp) (* 3 ppp)) p pp)))
    )
    (loop 0 0 0 0)
)

(f 5)