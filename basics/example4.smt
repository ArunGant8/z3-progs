;; Example 4: ADDITIONAL COMMANDS
;;    - display : pretty printer
;;    - simplify : simplifier

(declare-const a (Array Int Int))
(declare-const x Int)
(declare-const y Int)
(display (+ x 2 x 1))
(simplify (+ x 2 x 1))
(simplify (< (+ x y) (+ x y)))
(simplify (< (+ x y) (+ x y)) :som true)  ;; put all expressions in sum-of-monomials form
(simplify (= x (+ y 2)) :arith-lhs true)
(simplify (= (store (store a 1 2) 4 3)
             (store (store a 4 3) 1 2)))
(simplify (= (store (store a 1 2) 4 3)
             (store (store a 4 3) 1 2))
          :sort-store true)
;;(help simplify) -- Uncomment this to see the options offered by simplify