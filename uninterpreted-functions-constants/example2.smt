;; Example 2: An example of congruence closure

(declare-sort A)
(declare-fun f (A) A)
(declare-const x A)
(assert (= (f (f x)) x))
(assert (= (f (f (f x))) x))
(check-sat)
(get-model)

(assert (not (= (f x) x)))
(check-sat)
