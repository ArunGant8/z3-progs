;; Example 3: Configuration
;;   - set-option
;;   - reset
;;  :Options
;;   - produce-proofs : can only be set before any declaration/assertion

(set-option :print-success true)
(set-option :produce-unsat-cores true)
(set-option :produce-models true)
(set-option :produce-proofs true)
(declare-const x Int)
(assert (= x 1))
;;(set-option :produce-proofs false) ;; ERROR
(echo "before reset")
(reset)
(set-option :produce-proofs false) ;; OK
