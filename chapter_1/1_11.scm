;f:Recursive process

(define (f n)
        (if (< n 3) n 
         (+ (f(- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))


;f:Iterative process


(define (f n) (if (< n 3) n (f-iter 2 1 0 (- n 2))))

(define (f-iter a b c n) (if(< n 1) a
	(f-iter ( + a (* 2 b) (* 3 c)) a b (- n 1))))
