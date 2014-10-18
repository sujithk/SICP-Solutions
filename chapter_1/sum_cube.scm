;;SICP section 1.3.1
;;sum of the cubes of the integers in a range

(define (sum-cube a b)
	(if (> a b) 0
		(+ (cube a)(sum-cube (+ 1 a) b))))

(define (cube a) (* a a a))
