; n1/d1 = n2/d2


(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))

(define (numer x)
(car x))
(define (denom x)
(cdr x))

(define (make-rat x y)
(cons x y))
