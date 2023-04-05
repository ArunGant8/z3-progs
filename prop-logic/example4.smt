;; Example 4: Pseudo Boolean Constraints
;; Sum of Boolean variables with coefficients are bounded,
;; eg: 2p + q + 3r + 3s + 3t >= 4

(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)
(declare-const s Bool)
(declare-const t Bool)
(assert ((_ pbge 4 2 1 3 3 2) p q r s t))  ;; pbge = Pseudo-Boolean greater equals
;;(assert ((_ pbeq 5 2 1 3 3 2) p q r s t))
(check-sat)
(get-model)
