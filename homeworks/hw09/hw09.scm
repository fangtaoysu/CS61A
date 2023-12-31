(define (curry-cook formals body) 
  (if (pair? formals)
      ; `(lambda (,(car formals)) ,(curry-cook (cdr formals) body))
      `(lambda ,(cons (car formals) nil) ,(curry-cook (cdr formals) body))
      body))

(define (curry-consume curry args)
  (if (null? args) 
      curry
      (curry-consume (curry (car args)) (cdr args))))

(define-macro (switch expr cases)
  (switch-to-cond (list 'switch expr cases)))

(define (switch-to-cond switch-expr)
  (cons `cond
        (map
         (lambda (case) (cons `(equal? ,(car (cdr switch-expr)) ,(car case)) (cdr case)))
         (car (cdr (cdr switch-expr))))))

(define (min x y)
  (if (< x y)
      x
      y))

(define (count f n i)
  (if (= i 0)
      0
      (+ (if (f n i)
             1
             0)
         (count f n (- i 1)))))

(define (is-factor dividend divisor)
  (if (equal? (modulo dividend divisor) 0)
      #t
      #f))

(define (switch-factors n)
  ; if a number only can be divisible by two numbers, it is prime, else composite
  (switch (min (count is-factor n n) 3) 
          ((1 `one)
          (2 `prime)
          (3 `composite)))
)
