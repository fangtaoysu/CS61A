(define (square n) (* n n))

; (define (pow base exp) (
;   if (zero? exp) 1 (
;     if (= exp 1) base (
;       if (zero? (modulo exp 2)) (
;         pow (* base base) (quotient exp 2)
;       ) (
;         * base (pow (* base base) (quotient (- exp 1) 2))
;       )
;     )
;   )
; )
; )
(define (pow base exp) (
  if (zero? exp) 1 (
    if (= exp 1) base (
      if (zero? (modulo exp 2)) (
        pow (square base) (quotient exp 2)
      ) (
        * base (pow (square base) (quotient (- exp 1) 2))
      )
    )
  )
))

(define (repeatedly-cube n x)
  (if (zero? n)
      x
      (let ((y (repeatedly-cube (- n 1) x)))
        (* y y y))))
; (define (repeatedly-cube n x)
;   (if (zero? n)
;       x (
;         * (repeatedly-cube (- n 1) x) (repeatedly-cube (- n 1) x) (repeatedly-cube (- n 1) x)
;       )
;   )
; )

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (
  car (cdr s)
))

(define (caddr s) (
  car (cdr (cdr s))
))
