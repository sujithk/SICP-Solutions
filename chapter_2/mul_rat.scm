;n1/d1 * n2/d2 =n1n2 * d1d2


(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
	    (* (denom x) (denom y))))
(define (numer x)
(car x))
(define (denom x)
(cdr x))

(define (make-rat x y)
(cons x y))
