;recursive

(define (product fn a next b)
	(if(> a b) 1 
		(* (fn a)(product fn (next a) next b))))

(define (inc a)(+ 1 a))

(define (square a)(* a a))

(define (product-square a b)
	(product square a inc b))

(product-square 1 5)

