(define (if-program condition if-true if-false)
  (list 'if condition if-true if-false)
  )

(define (pow-expr n p) 
  ; (cond ((= p 0) 1)
  ;       ((= p 1) n)
  ;       (else (* n (pow-expr n (- p 1)))))
  (cond ((= p 0) 1)
        ((= p 1) n)
        ((= (remainder p 2) 0) (pow-expr (* n n) (quotient p 2)))
        (else (* n (pow-expr (* n n) (quotient (- p 1) 2)))))
)

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (swap expr)
  (let ((op (car expr))
        (first (car (cdr expr)))
        (second (caddr expr))
        (rest (cdr (cddr expr))))
    (if (>= (eval first) (eval second)) 
        expr
        (cons op 
              (cons second
                    (cons first
                           rest))))))
