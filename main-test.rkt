#lang racket/base

(require rackunit
         "main.rkt")

(check-equal? (-> 'x) 'x)
(check-equal? (-> 'x (list)) (list 'x))
(check-equal? (-> 'x (list 'y)) (list 'x 'y))
(check-equal? (-> 'x (list 'y 'z)) (list 'x 'y 'z))
(check-equal? (-> '(x) car) 'x)
(check-equal? (-> 1 (- 2 3)) -4)

(check-equal? (->> 'x) 'x)
(check-equal? (->> 'x (list)) (list 'x))
(check-equal? (->> 'x (list 'y)) (list 'y 'x))
(check-equal? (->> 'x (list 'y 'z)) (list 'y 'z 'x))
(check-equal? (->> '(x) car) 'x)
(check-equal? (->> 1 (- 2 3)) -2)
