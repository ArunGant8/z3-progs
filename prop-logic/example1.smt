;; Example 1: Boolean operators
;;   - and
;;   - or
;;   - xor
;;   - not
;;   - => (implication)
;;   - ite (if-then-else)
;;   - bi-implication (=)
;;   - define-fun  : defines a macro (alias)

(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)

(define-fun conjecture () Bool
        (=> (and (=> p q) (=> q r))
                (=> p r)))
(assert (not conjecture))
(check-sat)
