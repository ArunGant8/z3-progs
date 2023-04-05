;; Example 2: Satisfiability and Validity
;; In this example, we check whether deMorgan's
;; law is valid by checking if its negation is
;; satisfiable:

(declare-const a Bool)
(declare-const b Bool)
(define-fun demorgan () Bool
    (= (and a b) (not (or (not a) (not b)))))
(assert (not demorgan))
(check-sat)
