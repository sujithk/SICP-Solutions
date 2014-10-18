(define (square x ) (* x x))
(define (square_sum x y) (+ (square x) (square y)))
(define (large x y z)
	(cond ((and (> x y) (> y z)) (square_sum x y))
	      ((and (> y x) (> z x)) (square_sum y z))
	      ((and (> x y) (> z y)) (square_sum x z))))
	   
		
