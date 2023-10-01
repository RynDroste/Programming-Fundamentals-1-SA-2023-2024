;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Chen_Xuanlin_PF1_Assignment1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image) 
(define TOTAL-HOURS (+ 5 8 12 10))  ;2.1.1

(define AVERAGE-HOURS (/ TOTAL-HOURS 4))  ;2.1.2

(define CONVERSION_FACTOR 1/60)
(define DISTANCE-TRAVELD (+ (* 80 (* 22 CONVERSION_FACTOR))
                            120
                            (* 90 (+ 1 (* 20 CONVERSION_FACTOR)))))  ;2.1.3

(define (squre x) (* x x))
(define STANDARD-BETTER (< (/ 12 (/ 4 (* pi (squre 33)))) (/ 9 (/ 4 (* pi (squre 18 ))))))  ;2.1.4

(define HI-TO-ME (string-append "Hello " "Xuanlin" ", welcome to PF1！"))  ;2.1.5

(define (greet InputName) (string-append "Hello " InputName ", welcome to PF1!"))  ;2.1.6


(define Traffic-lights (overlay (above (ellipse 15 15 "solid" "red")
                                       (ellipse 15 15 "solid" "yellow")
                                       (ellipse 15 15 "solid" "green"))
                                (triangle 80 "solid" "white")
                                (triangle 120 "solid" "red")))  ;2.2