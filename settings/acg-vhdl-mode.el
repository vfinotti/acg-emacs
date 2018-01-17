(require 'vhdl-mode)

;; Spacing and appearances
(setq vhdl-basic-offset 4)

;; Signals and components behaviour
(setq vhdl-reset-active-high t)
(setq vhdl-reset-kind (quote sync))

(setq vhdl-clock-edge-condition (quote function))
