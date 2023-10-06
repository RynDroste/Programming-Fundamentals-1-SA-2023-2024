;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname PF1_Assignment3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct median [x y z])
(define (calmedian p)
   (cond
     [(or (and(> (median-y p) (median-x p)) (> (median-x p) (median-z p))) (and(> (median-z p) (median-x p)) (> (median-x p) (median-y p)))) (+ (median-x p) 0)]
     [(or (and(> (median-y p) (median-x p)) (> (median-z p) (median-y p))) (and(> (median-y p) (median-z p)) (> (median-x p) (median-y p)))) (+ (median-y p) 0)]
     [(or (and(> (median-z p) (median-x p)) (> (median-y p) (median-z p))) (and(> (median-z p) (median-y p)) (> (median-x p) (median-z p)))) (+ (median-z p) 0)]))

(define-struct 3-max [x y z])
(define (calmax p)
   (cond
     [(and(> (3-max-x p) (3-max-y p)) (> (3-max-x p) (3-max-z p))) (+ (3-max-x p) 0)]
     [(and(> (3-max-y p) (3-max-x p)) (> (3-max-y p) (3-max-z p))) (+ (3-max-y p) 0)]
     [(and(> (3-max-z p) (3-max-x p)) (> (3-max-z p) (3-max-y p))) (+ (3-max-z p) 0)]))