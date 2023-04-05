;; Example 3: Cardinality constraints:
;; Basically a shortcut for a disjunction
;; of conjunctions that would hold when
;; "atleast" k are true

(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)
;;(assert ((_ at-least 2) p q r))
(assert ((_ at-most 1) p q r))
(check-sat)
(get-model)
