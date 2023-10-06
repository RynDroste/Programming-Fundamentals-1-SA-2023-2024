;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Chen_Xuanlin_PF1_Assignment3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/universe)
(require 2htdp/image)
(require racket/string)

;;2
;; Data types
; a input is a structure (make-median Number Number Number)
; interpretation: three numbers (x y z)
(define-struct input [x y z])

;; Input/output
; median : input -> Number
; median of three numbers
; header: (define (median p) 0)

;; Examples
(check-expect (median (make-input 1 2 3)) 2)
(check-expect (median (make-input 6 8 2)) 6)
(check-expect (median (make-input 9 11 5)) 9)

;; Template
;(define (median input)
;  ( ... (input-x input) (input-y input) (input-z input)))

(define (median p)
   (cond
     [(or (and(> (input-y p) (input-x p)) (> (input-x p) (input-z p))) (and(> (input-z p) (input-x p)) (> (input-x p) (input-y p)))) (input-x p)]
     [(or (and(> (input-y p) (input-x p)) (> (input-z p) (input-y p))) (and(> (input-y p) (input-z p)) (> (input-x p) (input-y p)))) (input-y p)]
     [(or (and(> (input-z p) (input-x p)) (> (input-y p) (input-z p))) (and(> (input-z p) (input-y p)) (> (input-x p) (input-z p)))) (input-z p)]))

;; Input/output
; calmax : 3-max -> Number
; max of three numbers
; header: (define (calmax p) 0)

;; Examples
(check-expect (3-max (make-input 1 2 3)) 3)
(check-expect (3-max (make-input 6 8 2)) 8)
(check-expect (3-max (make-input 9 11 5)) 11)

;; Template
;(define (3-max input)
;  ( ... (input-x input) (input-y input) (input-z input)))
(define (3-max p)
   (cond
     [(and(> (input-x p) (input-y p)) (> (input-x p) (input-z p))) (+ (input-x p) 0)]
     [(and(> (input-y p) (input-x p)) (> (input-y p) (input-z p))) (+ (input-y p) 0)]
     [(and(> (input-z p) (input-x p)) (> (input-z p) (input-y p))) (+ (input-z p) 0)]))


;;2.1
;; Data types
; a Posn is a structure (make-posn Number Number)
; interpretation: point at coordinates (`x`, `y`)
; (define-struct posn [x y])

;2.1.3
;; Input/output
; left-of : Posn -> boolean
; judge the x coordinates of two points if second lies on the left of the first
; header: (define (left-of p q) 0)

;; Examples
(check-expect (left-of (make-posn 3 5)(make-posn 4 5)) true)
(check-expect (left-of (make-posn 2 45)(make-posn 1 45)) false)
(check-expect (left-of (make-posn 12 7)(make-posn 17 7)) true)

;; Template
;(define (left-of p q)
;  ( ... (posn-x p) (posn-x q)...))
(define (left-of p q)
  (cond
    [(<= (posn-x p) (posn-x q)) true]
    [(> (posn-x p) (posn-x q)) false]))

;2.1.4
;; Input/output
; mirror-vertical : Posn -> String
; judge calculate the opposite horizontal coordinate
; header: (define (mirror-vertical p ) 0)

;; Examples
(check-expect (mirror-vertical (make-posn 3 5)) "3 -5")
(check-expect (mirror-vertical (make-posn 5 6)) "5 -6")
(check-expect (mirror-vertical (make-posn 7 12)) "7 -12")

;; Template
;(define (mirror-vertical p )
;  ( ... (posn-x p) ...))
(define (mirror-vertical p) (string-append (number->string(posn-x p)) " " (number->string(- (posn-y p) (* 2 (posn-y p))))))


;2.2
;2.2.5
;; Data types
; a moty is a structure (make-moty Number)
; interpretation: month of the year (month)
(define-struct moty [month])

;2.2.6
;; Input/output
; (number->month : Number -> String
; convert numbers of month to strings
; header: (define (number->month p) 0)

;; Examples
(check-expect (number->month (make-moty 3)) "March")
(check-expect (number->month (make-moty 5)) "May")
(check-expect (number->month (make-moty 11)) "November")

;; Template
;(define (number->month p )
;  ( ... (moty-x p) ...))
(define (number->month p)
  (cond
    [(= (moty-month p) 1) "January"]
    [(= (moty-month p) 2) "February"]
    [(= (moty-month p) 3) "March"]
    [(= (moty-month p) 4) "April"]
    [(= (moty-month p) 5) "May"]
    [(= (moty-month p) 6) "June"]
    [(= (moty-month p) 7) "July"]
    [(= (moty-month p) 8) "August"]
    [(= (moty-month p) 9) "September"]
    [(= (moty-month p) 10) "October"]
    [(= (moty-month p) 11) "November"]
    [(= (moty-month p) 12) "December"]))

;2.2.7
;; Data types
; a year is a structure (make-year Number)
; interpretation: year (x)
(define-struct year [x])

;; Input/output
; (leap-year : Number -> boolean
; judge if it is a leap year
; header: (define (leap-year p) 0)

;; Examples
(check-expect (leap-year (make-year 2000)) true)
(check-expect (leap-year (make-year 1900)) false)
(check-expect (leap-year (make-year 2004)) true)

;; Template
;(define (leap-year p )
;  ( ... (year-x p) ...))
(define (leap-year p) (or (and(= 0 (modulo (year-x p) 4)) (> (modulo (year-x p) 100) 0) (equal? (equal? (year-x p) 0) false)) (and(= 0 (modulo (year-x p) 400)) (equal? (equal? (year-x p) 0) false))))

;2.2.8
;; Data types
; a Date is a structure (make-Date Number Number Number)
; interpretation: Date (day month year)
(define-struct Date [day month year])

;2.2.9
;; Input/output
; (date->string : Number -> string
; convert the dates to strings
; header: (define (date->string p) 0)

;; Examples
(check-expect (date->string (make-Date 2 2 2023)) "2 February 2023")
(check-expect (date->string (make-Date 5 6 -2010)) "5 June 2010 BCE")
(check-expect (date->string (make-Date 12 12 2000)) "12 December 2000")

;; Template
;(define (date->string p )
;  ( ... (Date-day p) (Date-month p) (Date-year p) ...))
(define (date->string p)
  (cond
    [(equal? (< (Date-year p) 0) true) (string-append (number->string (Date-day p)) " " (number->month (make-moty (Date-month p))) " " (number->string (abs(Date-year p))) " BCE")]
    [(equal? (> (Date-year p) 0) true) (string-append (number->string (Date-day p)) " " (number->month (make-moty (Date-month p))) " " (number->string (Date-year p)))]))

;2.2.10
;; Input/output
; (days-in-month : Number -> Number
; convert the month to days
; header: (define (days-in-month p) 0)

;; Examples
(check-expect (days-in-month (make-moty 2)) 28)
(check-expect (days-in-month (make-moty 7)) 31)
(check-expect (days-in-month (make-moty 12)) 31)

;; Template
;(define (date->string p )
;  ( ... (Date-day p) (Date-month p) (Date-year p) ...))
(define (days-in-month p)
  (cond
    [(= (moty-month p) 1) 31]
    [(= (moty-month p) 2) 28]
    [(= (moty-month p) 3) 31]
    [(= (moty-month p) 4) 30]
    [(= (moty-month p) 5) 31]
    [(= (moty-month p) 6) 30]
    [(= (moty-month p) 7) 31]
    [(= (moty-month p) 8) 31]
    [(= (moty-month p) 9) 30]
    [(= (moty-month p) 10) 31]
    [(= (moty-month p) 11) 30]
    [(= (moty-month p) 12) 31]))

(define (leapyear p) (or (and(= 0 (modulo (Date-year p) 4)) (> 0 (modulo (Date-year p) 100)) (equal? (equal? (Date-year p) 0) false))
                         (and(= 0 (modulo (Date-year p) 400)) (equal? (equal? (Date-year p) 0)
                                                                      false))))

;2.2.11
;; Input/output
; (date-valid : Number -> boolean
; convert the month to days
; header: (define (date-valid p q) 0)

;; Examples
(check-expect (date-valid(make-Date 29 2 2000)(make-moty 2)) true)
(check-expect (date-valid(make-Date 35 44 2020)(make-moty 3)) false)
(check-expect (date-valid(make-Date 6 12 2023)(make-moty 12)) true)

;; Template
;(define (date-valid p q)
;  ( ... (Date-day p) (Date-month p) (Date-year p) (moty-month q)...))
(define (date-valid p q)
  (cond
    [(and(equal? (leap-year(make-year(Date-year p))) true) (equal? (equal? (Date-month p) 2) true) (equal? (equal? (Date-year p) 0) false) (equal? (equal? (Date-day p) 29) true)) true]
    [(and(equal? (equal? (Date-year p) 0) false)
         (equal? (<= (Date-month p) 12) true) (equal? (>= (Date-month p) 1) true)
         (equal? (<= (Date-day p) (days-in-month(make-moty(moty-month q)))) true) (equal? (>= (Date-day p) 1) true)) true]
      (else false)))
