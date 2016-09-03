;; -------------------------------------------------------------------------
;; Rebinding Commands

;; Rebinding Emacs built-in commands
(global-set-key (kbd "C-s") 'save-buffer)
(global-unset-key (kbd "C-f"))
(global-set-key (kbd "C-f") 'isearch-forward)
(define-key isearch-mode-map "\C-f" 'isearch-forward)
(define-key isearch-mode-map "\C-g" 'isearch-repeat-forward)
;;(define-key isearch-mode-map "\C-\S-G" 'isearch-repeat-backward) ;; @TODO: Not working!
(global-set-key (kbd "C-w") 'kill-this-buffer)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "M-q") 'other-window)
(require 'csharp-mode)
(define-key csharp-mode-map (kbd "C-d") nil)
(global-set-key (kbd "C-d") 'kill-whole-line)
(global-set-key (kbd "C-a") 'mark-whole-buffer)
(global-set-key (kbd "<M-return>") 'open-line)
(global-set-key (kbd "<C-backspace>") 'backward-kill-word)
(global-set-key (kbd "<C-S-delete>") 'kill-line)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-S-Z") 'redo)
(global-set-key (kbd "C-S-V") 'x-clipboard-yank)


;; Rebinding Helm commands
(require 'helm)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-S-B") 'helm-mini)
(global-set-key (kbd "C-o") 'helm-find-files)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
;;(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; makes TAB work in terminal
(define-key helm-map (kbd "M-a") 'helm-select-action) ; list actions using M-a

;; Binding Crux commands
(require 'crux)
(crux-reopen-as-root-mode 1)
(global-set-key (kbd "<C-S-backspace>") 'crux-kill-line-backwards)
(global-set-key (kbd "<C-return>") 'crux-smart-open-line)
(global-set-key (kbd "<C-S-return>") 'crux-smart-open-line-above)
(global-set-key (kbd "C-b") 'crux-switch-to-previous-buffer)
(global-unset-key (kbd "C-/"))
(local-unset-key (kbd "C-/"))
(define-key undo-tree-map (kbd "C-/") nil)
(global-set-key (kbd "C-/") (crux-with-region-or-line comment-or-uncomment-region))
(global-set-key (kbd "C-;") 'append-string-to-eol)
(global-set-key (kbd "C-S-C") (crux-with-region-or-line clipboard-kill-ring-save))
(global-set-key (kbd "C-S-X") (crux-with-region-or-line clipboard-kill-region))
(global-set-key (kbd "C-j") 'crux-top-join-line)
(global-set-key (kbd "C-S-J") 'join-line)

;; Binding Custom Functions commands
(global-set-key (kbd "<home>") 'prelude-move-beginning-of-line)
(global-set-key (kbd "<M-up>") 'move-line-up)
(global-set-key (kbd "<M-down>") 'move-line-down)
(global-set-key (kbd "C-c t") 'xah-open-in-terminal)
(global-set-key (kbd "C-c o") 'xah-open-in-desktop)



;; ----------------------------------------------------------------------
;; Todo List
;;
;; - Ver questão cursor não mudar com scroll (prelude ui)
;; - Ver smart-mode-line




(provide 'acg-keybindings)
