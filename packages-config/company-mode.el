(require 'company)
(diminish 'company-mode)

;; enable company in all modes
(add-hook 'after-init-hook 'global-company-mode)

;; using popups instead of opening another window for documentation
(company-quickhelp-mode 1)
;; make the documentation popup only appear when manually selected
(setq company-quickhelp-delay nil)
;; define M-h to show the documentation popup
(eval-after-load 'company
  '(define-key company-active-map (kbd "M-h") #'company-quickhelp-manual-begin))

;; decrease delay before autocompletion popup shows
(setq company-idle-delay .3)


;; more company backends
;; (to do)
