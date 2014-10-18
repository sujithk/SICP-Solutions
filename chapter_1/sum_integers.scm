;;SICP section 1.3.1
;;sum of integers from a to b

(define (sum-all a b)
	(if(> a b) 0
		( + a (sum-all (+ 1 a)b))))

;;sum of sequence which converges to pi/8

(define (sum-pi a b)
	(if (> a b) 0
		(+ (/ 1.0 (* a (+ a 2))) (sum-pi (+ a 4) b))))

