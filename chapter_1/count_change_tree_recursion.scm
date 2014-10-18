(define (count-change amount)
        (cc amount 5))
                               
                                                      
                     

(define (cc amount kinds-of-coins)
	(cond ((= amount 0) 1)
	((or (< amount 0) (= kinds-of-coins 0)) 0)
	(else (+ (cc amount (- kinds-of-coins 1))
	(cc (- amount (first-denom kinds-of-coins))
	kinds-of-coins)))))



(define (first-denom coin)
  (cond((= coin 1) 1)
       ((= coin 2) 5)
       ((= coin 3) 10)
	((= coin 4) 25)
	((= coin 5) 50)))
