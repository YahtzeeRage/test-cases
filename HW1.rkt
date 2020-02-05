; Test cases for Homework 1
; ONLY PUT TEST CASES HERE, NO SOLUTIONS OR IMPLEMENTATION DETAILS

(require rackunit)

;;; Question 1

;;; Question 2

;;; Question 3

; lambda
(check-true (lambda? '(lambda (x) x)))
(check-true (lambda? '(lambda (x y z) z y x)))
(check-false (lambda? '(lambda (x 1) x)))
(check-false (lambda? '(lambda (x))))
(check-true (lambda? '(lambda () 3)))
(check-false (lambda? '3))

(check-equal? '(x) (lambda-params '(lambda (x) y)))
(check-equal? '(y) (lambda-body '(lambda (x) y)))


; apply
(check-false (apply? '(lambda (x) x)))
(check-false (apply? '(define x 1)))
(check-false (apply? 'x))
(check-false (apply? '(x)))
(check-true (apply? '(x y)))
(check-true (apply? '(x y z)))

(check-equal? 'x (apply-func '(x y)))
(check-equal? '(y) (apply-args '(x y)))

; define
(check-true (define? '(define x 3)))
(check-false (define? 'x))
(check-false (define? '(x y z)))

(check-true (define-basic? '(define x 3)))
(check-false (define-basic? '(define (x) 3)))

(check-false (define-func? '(define x 3)))
(check-true (define-func? '(define (x) 3)))
(check-false (define-func? '(define () 3)))
