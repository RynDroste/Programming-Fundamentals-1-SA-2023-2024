;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Chen_Xuanlin_PF1_Assignment2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/universe)
(require 2htdp/image)
(require racket/string)
;; 2.1.1
;; data types
; A Length is a number
; interpretation: the length in centimeters or inches


;; 2.1.2
; data types
; A Length is a number
; interpretation: the length in centimeters or inches

;; Input/output
; inches -> cm : length -> length
; convert inches length `in-len` to the cm scale
; header:
; (define (inches->cm in-len) in-len)

;; Examples
; (inches->cm 0) "should be" 0
; (inches->cm 1) "should be" 2.54
; (inches->cm 10) "should be" 25.4

; DrRacket checks that (inches->cm 0) evaluates to 0
(check-expect (inches->cm 0) 0)
(check-expect (inches->cm 1) 2.54)
(check-expect (inches->cm 10) 25.4)

;; Template
; (define (inches->cm in-len)
;    ( ... in-len ... ))

;; Code
(define cons1 2.54)
(define (inches->cm in-len) (* in-len cons1))

;; Test
; Click Run (top right) and see if the 3 tests pass.
; You inches->cm directly in the interactions area)


;;2.1.3
; data types
; A Mean/4 is a number
; interpretation: the mean in several numbers

;; Input/output
; numbers -> mean : number -> number
; calculate mean of numbers
; header:
; (define (mean/4 numbers) numbers)

;; Examples
; (mean/4 0 0 0 0) "should be" 0
; (mean/4 1 2 3 4) "should be" 2.5
; (mean/4 4 8 12 16) "should be" 10

; DrRacket checks that (inches->cm 0) evaluates to 0
(check-expect (mean/4 0 0 0 0) 0)
(check-expect (mean/4 1 2 3 4) 2.5)
(check-expect (mean/4 4 8 12 16) 10)

;; Template
; (define (mean/4 numbers)
;    ( ... numbers ... ))

;; Code
(define (mean/4 n1 n2 n3 n4) (/ (+ n1 n2 n3 n4) 4))

;; Test
; Click Run (top right) and see if the 3 tests pass.
; You inches->cm directly in the interactions area)


;; 2.1.4
; datA types
; A area-triangle is a number
; interpretation: the area-triangle computes the area

;; Input/output
; base height -> area-triangle : number -> number
; compute the area
; header:
; (define (area-triangle base height) area)

;; Examples
; (area-triangle 0 0) "should be" 0
; (area-triangle 1 2) "should be" 1
; (area-triangle 5 10) "should be" 25

; DrRacket checks that (inches->cm 0) evaluates to 0
(check-expect (area-triangle 0 0) 0)
(check-expect (area-triangle 1 2) 1)
(check-expect (area-triangle 5 10) 25)

;; Template
; (define (area-triangle base height)
;    ( ... base height ... ))

;; Code
(define (area-triangle base height) (/ (* base height) 2))

;; Test
; Click Run (top right) and see if the 3 tests pass.
; You area-triangle directly in the interactions area)


;; 2.1.5
; data types
; A perfect-square is a number
; interpretation: the perfect-square is the square of another integer

;; Input/output
; numbers -> flag : number -> boolean
; exam if it is a perfect square or not
; header:
; (define (perfect-square numbers) flag)

;; Examples
; (perfect-square 4) "should be" true
; (perfect-square 9) "should be" true
; (perfect-square 12) "should be" false

; DrRacket checks that (inches->cm 0) evaluates to 0
(check-expect (perfect-square 4) true)
(check-expect (perfect-square 9) true)
(check-expect (perfect-square 12) false)

;; Template
; (define (perfect-square numbers)
;    ( ... flag ... ))

;; Code
(define (perfect-square numbers) (if (integer? (sqrt numbers)) true false))

;; Test
; Click Run (top right) and see if the 3 tests pass.
; You perfect-square directly in the interactions area)

;; 2.1.6
; datA types
; A CHF is a number
; interpretation: the number of money


;;2.1.7
; data types
; A final-price is a number
; interpretation: the number of the price in CHF

;; Input/output
; final-price : number -> number
; total price for an order of `n` toilet paper
; header:
; (define (final-price n) 0)

;; Examples
; (final-price 0) "should be" 0
; (final-price 2) "should be" 4
; (final-price 10) "should be" 18

; DrRacket checks that (final-price 0) evaluates to 0
(check-expect (final-price 0) 0)
(check-expect (final-price 2) 4)
(check-expect (final-price 10) 18)

;; Template
; (define (final-price n)
;    ( ... n ... ))

;; Code
(define (final-price n)
  (cond
    [(> n 20) (* n 0.85)]
    [(> n 6) (* n 2 0.9)]
    [else     (* n 2)]))

;; Test
; Click Run (top right) and see if the 3 tests pass.
; You final-price directly in the interactions area)



;2.1.8
; data types
; A word is a string(in neo-latin or english)
; interpretation: the word in neo-latin or english
;; Input/output
; neo-latin->english : string -> string
; tconvert neo-latin `word` to the english
; header:
; (define (neo-latin->english word) word)

;; Examples
; (neo-latin->english "do") "should be" "C"
; (neo-latin->english "la") "should be" "A"
; (neo-latin->english "si") "should be" "B"

; DrRacket checks that (final-price 0) evaluates to 0
(check-expect (neo-latin->english "do") "C")
(check-expect (neo-latin->english "la") "A")
(check-expect (neo-latin->english "si") "B")

;; Template
; (define (neo-latin->english word)
;    ( ... word ... ))

;; Code
(define (neo-latin->english word)
  (cond
    [(string=? word "do") (string-replace word word "C" )]
    [(string=? word "re") (string-replace word word "D" )]
    [(string=? word "mi") (string-replace word word "E" )]
    [(string=? word "fa") (string-replace word word "F" )]
    [(string=? word "sol")(string-replace word word "G" )]
    [(string=? word "la") (string-replace word word "A" )]
    [(string=? word "si") (string-replace word word "B" )]))

;; Test
; Click Run (top right) and see if the 3 tests pass.
; You neo-latin->english directly in the interactions area)


;2.1.9
; empty background scene
(define BACKGROUND (circle 50 "solid" "white"))

;data types
; A quarter-angle is a number
; interpretation: an angle of a clock’s minute hand indicating that quarter

;; Input/output
;quarter->angle : integer between 0 included and 4 excluded -> number
; convert quarter to the angle
; header:
; (define (quarter->angle quarter) angle)

;; Examples
; (quarter->angle 3) "should be" "180"
; (neo-latin->english "2") "should be" "270"
; (neo-latin->english "1") "should be" "90"

(check-expect (quarter->angle 0) 90)
(check-expect (quarter->angle 1) 0)
(check-expect (quarter->angle 2) 270)

;; Template
;(define (quarter->english y)
;  (cond
;    [(= y 0) (...y...)]
;    [(= y 1) (...y...))]
;    [(= y 2) (...y...)]
;    [(= y 3) (...y...)]))

(define (quarter->angle y)
  (cond
   [(= y 0) (abs(+ -90 (* y 90)))]
   [(= y 1) (abs(+ -90 (* y 90)))]
   [(= y 2) (- 360 (abs(+ -90 (* y 90))))]
   [(= y 3) (abs(+ -90 (* y 90)))]))


;; Test
; Click Run (top right) and see if the 3 tests pass.
; You quarter->angle directly in the interactions area)


;2.1.10
;data types
; A clock-minutes is an image
; interpretation: an image  of a clock with the minute hand placed at the appropriate position

;; Input/output
;clock-minutes : number -> image
; convert quarter number to the image
; header:
; (define (clock-minutes quarter) image)

;; Examples
(check-expect (clock-minutes 6) (place-image(rotate (abs(- (quarter->angle (modulo 6 4)) 90))(rectangle 2 50 "solid" "red"))
                          50 75
                          BACKGROUND))
(check-expect (clock-minutes 8) (place-image(rotate (abs(- (quarter->angle (modulo 8 4)) 90))(rectangle 2 50 "solid" "red"))
                          50 25
                          BACKGROUND))
(check-expect (clock-minutes 9) (place-image(rotate (abs(- (quarter->angle (modulo 9 4)) 90))(rectangle 2 50 "solid" "red"))
                          75 50
                          BACKGROUND))

;; Template
;(define (clock-minutes x)
;  (cond
;    [(= (modulo x 4) 0) (...x...)]
;    [(= (modulo x 4) 1) (...x...))]
;    [(= (modulo x 4) 2) (...x...)]
;    [(= (modulo x 4) 3) (...x...)]))
(define (clock-minutes x)
   (cond
     [(= (modulo x 4) 0) (place-image(rotate (abs(- (quarter->angle (modulo x 4)) 90))(rectangle 2 50 "solid" "red"))
                          50 25
                          BACKGROUND)]
     [(= (modulo x 4) 1) (place-image(rotate (abs(- (quarter->angle (modulo x 4)) 90))(rectangle 2 50 "solid" "red"))
                          75 50
                          BACKGROUND)]
     [(= (modulo x 4) 2) (place-image(rotate (abs(- (quarter->angle (modulo x 4)) 90))(rectangle 2 50 "solid" "red"))
                          50 75
                          BACKGROUND)]
     [(= (modulo x 4) 3) (place-image(rotate (abs(- (quarter->angle (modulo x 4)) 90))(rectangle 2 50 "solid" "red"))
                          25 50
                          BACKGROUND)]))


;; Test
; Click Run (top right) and see if the 3 tests pass.
; You clock-minutes directly in the interactions area)