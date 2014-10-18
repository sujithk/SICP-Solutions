;;Sum using procedure as arguments

(define (sum term a next b)
	(if (> a b) 0
	(+ (term a) (sum term(next a) next b))))

(define (inc a) (+ 1 a))

(define (sum-cubes a b)
	(sum cube a inc b))

(define (cube n)(* n n n))


(sum-cubes 1 10)

;;sum of integers using procedures

(define (sum-int a b)
	(sum identity a inc b))

(define (identity n) n)

(sum-int 1 10)

;;sum of pi series

(define (pi-sum a b)
	(define (pi-term x)
		(/ 1.0 (* x(+ x 2))))
	(define (pi-next x)
		(+ x 4))
 (sum pi-term a pi-next b))

(* 8 (pi-sum 1 1000))
