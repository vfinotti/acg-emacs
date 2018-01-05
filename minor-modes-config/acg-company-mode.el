(require 'company)
(require 'crux)
(diminish 'company-mode)

;; enable company in all modes
(add-hook 'after-init-hook 'global-company-mode)


;; decrease delay before autocompletion popup shows
(setq company-idle-delay nil) ;; before: .3

;; do not require that the typed char when completing be a match
(setq company-require-match nil)

;; decrease delay before showing quickhelp
(setq company-quickhelp-delay 0.3)

;; more company backends
;; (to do)


;; my custom function for custom indentation

(defun acg-company-indent-or-complete-common ()
  "Indent the current line or region (using function supplied as argument), or
complete the common part."
  (interactive)
  (cond
   ((use-region-p)
    (indent-region (region-beginning) (region-end)))
   ((let ((old-point (point))
          (old-tick (buffer-chars-modified-tick))
          (tab-always-indent t))
      (call-interactively #'indent-for-tab-command)
      (when (and (eq old-point (point))
                 (eq old-tick (buffer-chars-modified-tick))
                 ;; do not run complete-common when blank chars before is
                 (not (or (eq (char-before) 10)                         ; newline
                          (eq (char-before) 32)                         ; whitespace
                          (eq (char-before) 41)                         ; )
                          (eq (char-before) 93)                         ; ]
                          (eq (char-before) 125))))                     ; }
        (company-complete-common))))))



;; Workaround for compatibility issues with fci-mode. Progress on matter is in:
;; https://github.com/company-mode/company-mode/issues/180
(defvar-local company-fci-mode-on-p nil)

(defun company-turn-off-fci (&rest ignore)
  (when (boundp 'fci-mode)
    (setq company-fci-mode-on-p fci-mode)
    (when fci-mode (fci-mode -1))))

(defun company-maybe-turn-on-fci (&rest ignore)
  (when company-fci-mode-on-p (fci-mode 1)))

(add-hook 'company-completion-started-hook 'company-turn-off-fci)
(add-hook 'company-completion-finished-hook 'company-maybe-turn-on-fci)
(add-hook 'company-completion-cancelled-hook 'company-maybe-turn-on-fci)
