(define (mul a b)(cond ((or (= a 0)(= b 0)) 0) 
			((= a 1)b)
			 ((= b 1)a)
			  ((if (> a b) (mul-iter a b 0 ) 
			                 (mul-iter b a 0)))))
	
(define (mul-iter a b r) (cond ((= b 0 ) r)
			   ((if (even? b) (mul-iter (double a) (half b)  r)   
			(mul-iter a (- b 1) (+ r a))))))
	




(define (double b) (+ b b))

(define (half n) (/ n 2))

(define (even? n)(= (remainder n 2)0))
