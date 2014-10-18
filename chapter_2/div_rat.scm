;(n1/d1)/(n2/d2)=(n1d2)/(d1n2)


(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
	    (* (denom x) (numer y))))

(define (numer x)
(car x))
(define (denom x)
(cdr x))

(define (make-rat x y)
(cons x y))
