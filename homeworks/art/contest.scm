;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Your title here>
;;;
;;; Description:
;;;   <It's your masterpiece.
;;;    Use these three lines to describe
;;;    its inner meaning.>

(define (draw)
  ; YOUR CODE HERE
  (bgcolor "white")
  (rt 90)
  (fd 270)
  (lt 90)
  (pendown)
  (color "royalblue")
    (begin_fill)
      (circle 600)
    (end_fill)
  (penup)
  (fd 10)
  (lt 90)
  (pendown)
  (color "pink")
    (begin_fill)
      (circle 60)
    (end_fill)
  (penup)
  (rt 90)
  (fd 1000)
  (exitonclick))
; Please leave this last line alone. You may add additional procedures above
; this line.
(draw)