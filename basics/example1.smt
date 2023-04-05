;; Example 1: Basic functions:
;;    - declare-const
;;    - declare-fun
;;    - assert
;;    - check-sat
;;    - get-model

(declare-const a Int)
(declare-fun f (Int Bool) Int)
(assert (< a 10))
(assert (> (f a true) 100))
(check-sat)
(get-model)
