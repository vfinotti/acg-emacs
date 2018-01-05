;; editor configurations

;; disable truncation of line
;;(set-default 'truncate-lines t)

;; makes kill ring not mess with clipboard
;(setq x-select-enable-clipboard nil)

;; consider camelCased as 2 words
(global-subword-mode 1)

;; enable downcase conversion in a region
(put 'downcase-region 'disabled nil)

;; lets you undo and redo changes in the window configuration
(winner-mode 1)

;; automatically run fill-paragraph
; (add-hook 'text-mode-hook 'turn-on-auto-fill)

;; visual-fill-column-mode makes the visual line be pruned at fill-column length
;; (require 'visual-fill-column)
;; (global-visual-fill-column-mode)
(add-hook 'text-mode-hook 'visual-line-mode)
;; (add-hook 'prog-mode-hook 'visual-line-mode)

;; fill-paragraph function only leave one space after period instead of two
(setq sentence-end-double-space nil)

;; make scratch buffer always start as org-mode and not lisp-mode
(setq initial-major-mode 'org-mode)

;; settings -- max-width for lines when using fill commands
(setq-default fill-column 79)

;; Draw line at fill column length
(setq-default fci-rule-column 80)
(setq-default fci-handle-truncate-lines nil) ;; make fci don't mess with
                                             ;; truncation
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

;; (add-hook 'org-mode-hook
;;           (lambda ()
            ;; (set-fill-column 96)))
(add-hook 'tex-mode-hook
          (lambda ()
            (set-fill-column 96)))
(add-hook 'text-mode-hook
          (lambda ()
            (set-fill-column 96)))

;; Making ctrl-backspace kill word (for terminal mode)
(global-set-key [(control ?h)] 'backward-kill-word)


;; search/replace

;; anzu-mode enhances isearch & query-replace by showing
;; total matches and current match position
(require 'anzu)
(diminish 'anzu-mode)
(global-anzu-mode)

;; delete the selection with a keypress
(delete-selection-mode t)


;; files, buffers, backup, autosave

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,(concat acg-backup-dir "files-autosave-and-backup/"))))
(setq auto-save-file-name-transforms
      `((".*" ,(concat acg-backup-dir "files-autosave-and-backup/") t)))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;; saving the last session (for when you open emacs the next time)
(desktop-save-mode 0)
(setq desktop-dirname (concat default-emacs-dir "desktop/")
      desktop-path (list desktop-dirname))

;; keep a list of recently opened files
(setq-default recent-save-file (concat default-emacs-dir "recentf"))
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-saved-items 300)
(setq recentf-max-menu-items 300)


;; tabs, indent, spacing

(setq tab-width 4)
(setq tab-stop-list (number-sequence 4 200 4))

;; use only spaces (and not tabs) for whitespace
(setq-default indent-tabs-mode nil)

;; smart tab behavior - indent or complete
(setq tab-always-indent 'complete)


(provide 'acg-editor)
