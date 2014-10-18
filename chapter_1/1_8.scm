(define (cube-iter guess x)
	(if (good-enough? guess x) guess  (cube-iter (improve guess x) x)))




(define (improve guess x)( / (+ (/ x (square guess) ) ( * 2 guess)) 3))

(define (average x y)(/ (+ x y)2))

(define (good-enough? guess x)
  (< (abs (- (* guess guess guess)x)) 0.001))

(define (cube-root x)(cube-iter 1.0 x))
