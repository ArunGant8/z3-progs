;; Example 2: Stack operations:
;;    - push
;;    - pop

(declare-const x Int)
(declare-const y Int)
(declare-const z Int)
(push)
(assert (= (+ x y) 10))
(assert (= (+ x (* 2 y)) 20))
(check-sat)
(pop) ;; Remove the two assertions
(push)
(assert (= (+ (* 3 x) y) 10))
(assert (= (+ (* 2 x) (* 2 y)) 21))
(check-sat)
(declare-const p Bool)
;;(pop)
(assert p) ;; This gives an error, as the pop removed the p from the stack
