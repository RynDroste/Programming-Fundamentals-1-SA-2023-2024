;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Xuanlin_Chen_PF1_Assignment4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

(define WIDTH 200)
(define HEIGHT 200)
(define BACKGROUND (empty-scene WIDTH HEIGHT))

(define-struct AppState [imagestate linestate quitstate])
(define-struct Line-2d [x1 y1 x2 y2])


(define (move-initial p x y)
  (cond
    [(and(number? x)(number? y)) (make-AppState(AppState-imagestate p)
                                               (make-Line-2d x y x y)
                                               (AppState-quitstate p))]
    [else p]))
              
(define (move-end p x y)
  (cond
    [(and(number? x)(number? y)) (make-AppState(AppState-imagestate p)
                                               (make-Line-2d (Line-2d-x1 (AppState-linestate p))(Line-2d-y1 (AppState-linestate p)) x y)
                                               (AppState-quitstate p))]
    [else p]))

(define (quit p)
  (make-AppState (AppState-imagestate p) (AppState-linestate p) #true))

(define (handle-mouse p x y event-type)
(cond
  [(string=? event-type "button-down")
   (move-initial p x y)]
  [(string=? event-type "drag")
   (move-end p x y)]
  [(string=? event-type "button-up")
   (add-line-to-canvas p x y)]
  [else p]))

(define (handle-key p key)
  (cond
    [(string=? key "q") (quit p)]
    [(string=? key "escape") (cancel-line p)]))

(define (cancel-line p)
  (make-AppState(AppState-imagestate p) (AppState-linestate p) (AppState-quitstate p)))

(define (add-line-to-canvas p x y)
  (cond
    [(and(number? x)(number? y)) (make-AppState (add-line (AppState-imagestate p) (Line-2d-x1 (AppState-linestate p)) (Line-2d-y1 (AppState-linestate p)) x y "red") (AppState-linestate p) (AppState-quitstate p))]
    [else p]))
(define (draw p)
  (cond
    [(eq? #f (AppState-linestate p)) (AppState-imagestate p)]
    [else (add-line      (AppState-imagestate p)
                  (Line-2d-x1 (AppState-linestate p))
                  (Line-2d-y1 (AppState-linestate p))
                  (Line-2d-x2 (AppState-linestate p))
                  (Line-2d-y2 (AppState-linestate p))
                  "red")]))
#|(define (draw p)
  (add-line BACKGROUND (Line-2d-x1 p) (Line-2d-x2 p) (Line-2d-x2 p) (Line-2d-y2 p) "red"))|#


  

(define (draw-application app)
  (big-bang  app
  [to-draw draw]
  [on-mouse handle-mouse]
  [on-key handle-key]))
