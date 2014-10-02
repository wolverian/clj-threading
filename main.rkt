#lang racket/base

(provide -> ->>)

(define-syntax ->>
  (syntax-rules ()
    [(_ x)
     x]
    [(_ x (ss ...))
     (ss ... x)]
    [(_ x y)
     (y x)]
    [(_ x y z ...)
     (->> (->> x y) z ...)]))

(define-syntax ->
  (syntax-rules ()
    [(_ x)
     x]
    [(_ x (s ss ...))
     (s x ss ...)]
    [(_ x y)
     (y x)]
    [(_ x y z ...)
     (-> (-> x y) z ...)]))
