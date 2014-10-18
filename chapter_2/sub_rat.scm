; n1/d1 - n2/d2 = (n1d2-n2d1)/d1d2



(define (sub-rat x y)
  (make-rat (+ (* (numer x) (denom y))
	       (* (numer y) (denom x)))
	    (* (denom x) (denom y))))

(define (numer x)
(car x))
(define (denom x)
(cdr x))

(define (make-rat x y)
(cons x y))
