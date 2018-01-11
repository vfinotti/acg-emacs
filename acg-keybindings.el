
;; I don't need to kill emacs that easily
;; the mnemonic is C-x REALLY QUIT
(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-x C-c") 'delete-frame)

;; Expand region (increases selected region by semantic units)
(global-set-key (if is-mac (kbd "C-@") (kbd "C-'")) 'er/expand-region)

;; Killing text
(global-set-key (kbd "C-S-k") 'kill-and-retry-line)
;; (global-set-key (kbd "C-w") 'kill-region-or-backward-word)
(global-set-key (kbd "C-c C-w") 'kill-to-beginning-of-line)

;; Use M-w for copy-line if no active region
(global-set-key (kbd "M-w") (λ (save-region-or-current-line 1)))
;; (global-set-key (kbd "s-w") 'save-region-or-current-line)
;; (global-set-key (kbd "M-W") (lambda (save-region-or-current-line 1)))


;; Create new frame
;; (define-key global-map (kbd "C-x C-n") 'make-frame-command)

;; Revert without any fuss
;; (global-set-key (kbd "M-<escape>") (lambda (revert-buffer t t)))

;; Edit file with sudo
(global-set-key (kbd "M-s e") 'sudo-edit)

;; Window switching
(windmove-default-keybindings) ;; Shift+direction
(global-set-key (kbd "C-x -") 'toggle-window-split)
(global-set-key (kbd "C-x C--") 'rotate-windows)
(global-unset-key (kbd "C-x C-+")) ;; don't zoom like this

(global-set-key (kbd "C-x 3") 'split-window-right-and-move-there-dammit)

;; Navigation bindings
(global-set-key [remap goto-line] 'goto-line-with-feedback)

(global-set-key (kbd "<prior>") 'beginning-of-buffer)
(global-set-key (kbd "<home>") 'beginning-of-buffer)
(global-set-key (kbd "<next>") 'end-of-buffer)
(global-set-key (kbd "<end>") 'end-of-buffer)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)

(global-set-key (kbd "M-<up>") 'smart-up)
(global-set-key (kbd "M-<down>") 'smart-down)
(global-set-key (kbd "M-<left>") 'smart-backward)
(global-set-key (kbd "M-<right>") 'smart-forward)

;; Webjump let's you quickly search google, wikipedia, emacs wiki
(global-set-key (kbd "C-x g") 'webjump)
(global-set-key (kbd "C-x M-g") 'browse-url-at-point)

;; Completion at point
(global-set-key (kbd "C-<tab>") 'completion-at-point)

;; Like isearch, but adds region (if any) to history and deactivates mark
(global-set-key (kbd "C-s") 'isearch-forward-use-region)
(global-set-key (kbd "C-r") 'isearch-backward-use-region)

;; Like isearch-*-use-region, but doesn't fuck with the active region
(global-set-key (kbd "C-S-s") 'isearch-forward)
(global-set-key (kbd "C-S-r") 'isearch-backward)

;; Comment/uncomment block
;; (global-set-key (kbd "C-c c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c u") 'uncomment-region)

;; Create scratch buffer
(global-set-key (kbd "C-c b") 'create-scratch-buffer)

;; Move windows, even in org-mode
(global-set-key (kbd "<s-right>") 'windmove-right)
(global-set-key (kbd "<s-left>") 'windmove-left)
(global-set-key (kbd "<s-up>") 'windmove-up)
(global-set-key (kbd "<s-down>") 'windmove-down)

;; Magit
(global-set-key (kbd "C-x m") 'magit-status-fullscreen)
(autoload 'magit-status-fullscreen "magit")

;; Yank and indent
(global-set-key (kbd "C-S-y") 'yank-unindented)

;; C-z caused the windows to stop updating, although any key pressed still
;; affected the buffer
(global-unset-key (kbd "C-z"))



;; Rebinding Emacs built-in commands
;(global-set-key (kbd "C-s") 'save-buffer)
;(define-key isearch-mode-map "\C-f" 'isearch-forward)
;(define-key isearch-mode-map "\C-g" 'isearch-repeat-forward)
;(define-key isearch-mode-map (kbd "C-S-G") 'isearch-repeat-backward)
;(define-key isearch-mode-map (kbd "C-S-V") 'isearch-yank-kill)
;(global-set-key (kbd "M-w") nil)

;(acg-force-global-set-key "C-a" 'mark-whole-buffer)
;(global-set-key (kbd "C-d") 'bookmark-set)
;(global-set-key (kbd "C-r") 'repeat)
;(global-set-key (kbd "C-z") 'undo)
;(global-set-key (kbd "C-S-Z") 'redo)
;(global-set-key (kbd "<M-return>") 'open-line)
;(global-set-key (kbd "C-S-SPC") 'cycle-spacing)

;(global-set-key (kbd "C-S-J") 'join-line)
;(global-set-keppy (kbd "M-j") 'open-line)


;; Major Modes

;; acg-ein

;; acg-elisp
(define-key emacs-lisp-mode-map (kbd "<f7>") 'eval-region)
(define-key emacs-lisp-mode-map (kbd "<f8>") 'eval-buffer)

;; acg-latex

;; acg-omnisharp

;; acg-org-mode
; keybindings are in the file

;; acg-ox-latex

;; acg-python
; keybindings are in the file

;; acg-shell
; keybindings are in the file

;; acg-web-mode


;; Minor Modes

;; acg-company-mode
(define-key company-active-map (kbd "M-h") #'company-quickhelp-mode)
(define-key company-active-map (kbd "<escape>") #'company-abort)
(define-key company-mode-map (kbd "<tab>") #'acg-company-indent-or-complete-common)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)


;; acg-crux
;; (global-set-key (kbd "<C-return>") 'crux-smart-open-line)
;; (global-set-key (kbd "<C-S-return>") 'crux-smart-open-line-above)
;; (global-set-key (kbd "<M-return>") 'indent-new-comment-line)
(global-set-key (kbd "C-c c") (crux-with-region-or-line comment-or-uncomment-region))
;; (global-set-key (kbd "C-j") 'crux-top-join-line)

;; acg-expand-region
;; (add-to-list 'acg-global-keybindings-list "S-SPC")
;; (global-set-key (kbd "S-SPC") 'er/expand-region)
;(acg-force-global-set-key "S-SPC" 'er/expand-region)

;; acg-fix-word
(global-set-key (kbd "M-u") 'fix-word-upcase)
(global-set-key (kbd "M-l") 'fix-word-downcase)
(global-set-key (kbd "M-c") 'fix-word-capitalize)
;(global-set-key (kbd "M-c") 'acg-toggle-letter-case)

;; acg-form-feed
;; (define-key undo-tree-map (kbd "C-_") nil)
(global-set-key (kbd "C--") 'insert-form-feed-below)
;; (global-set-key (kbd "C-_") 'insert-form-feed-above)

;; acg-helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "<menu>") 'helm-M-x)
(global-set-key (kbd "C-b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x f") 'helm-recentf)
(global-set-key (kbd "C-S-B") 'helm-bookmarks)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
;;(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; makes TAB work in terminal
(define-key helm-map (kbd "M-a") 'helm-select-action) ; list actions using M-a
(global-set-key (kbd "C-f") 'helm-swoop-without-pre-input)
(global-set-key (kbd "C-S-F") 'helm-swoop)
(global-set-key (kbd "C-M-f") 'helm-multi-swoop-all)
(global-set-key (kbd "M-v") 'helm-show-kill-ring)
; Non-global keybindings are in the file

;; acg-highlight
;(global-unset-key (kbd "M-h"))
;; changes the keymap to M-h
;(global-set-key (kbd "M-h") hlt-map)

;; acg-highlight-indent-guides

;; acg-magit
(global-set-key (kbd "C-c g") 'magit-status)

;; acg-minimap

;; acg-multiple-cursors
(global-set-key (kbd "C-c m m")     'mc/edit-lines) 
;; (global-set-key (kbd "C-c m C-a")   'edit-beginnings-of-lines) 
;; (global-set-key (kbd "C-c m C-e")   'edit-ends-of-lines) 
(global-set-key (kbd "C-c m n")     'mc/mark-next-like-this) 
(global-set-key (kbd "C-c m p")     'mc/mark-previous-like-this) 
(global-set-key (kbd "C-c m a")     'mc/mark-all-like-this) 
(global-set-key (kbd "C-c m r")     'mc/mark-all-in-region) 
(global-set-key (kbd "C-c m i l")   'mc/insert-letters) 
(global-set-key (kbd "C-c m i n")   'mc/insert-numbers) 
(global-set-key (kbd "C-c m v")     'yank) 

;; acg-projectile

;; acg-smartparens
; keybindings are in the file

;; acg-tabbar-config
;; (global-set-key (kbd "<C-tab>") 'acg-tabbar-forward)
;; (global-set-key (kbd "<C-S-iso-lefttab>") 'acg-tabbar-backward)
;; (global-set-key (kbd "<C-next>") 'acg-tabbar-forward)
;; (global-set-key (kbd "<C-prior>") 'acg-tabbar-backward)


;; acg-undo-tree
;; keybindings
(acg-force-global-set-key "C-M-_" 'undo-tree-visualize)

;; acg-yasnippet

;; pomodoro
(global-set-key (kbd "<f12>") 'pomidor)


;; Custom Functions

;; acg-calc
;; (global-set-key (kbd "C-c c c") 'calc)
;; (global-set-key (kbd "C-c c e") 'acg-calc-eval)
;; (global-set-key (kbd "C-c c p") 'acg-calc-paste-and-eval)

;; acg-char-manipulation
(global-set-key (kbd "C-;") 'append-or-remove-semicolon-to-eol)
(global-set-key (kbd "C-,") 'append-or-remove-comma-to-eol)
;(global-set-key (kbd "M-w t") 'transpose-words)

;; acg-clipboard
;; (global-set-key (kbd "C-S-C") 'acg-clipboard-kill-ring-save)
;; (global-set-key (kbd "C-S-X") 'acg-clipboard-kill-region-or-line)
;; (global-set-key (kbd "C-S-V") 'acg-clipboard-paste-replace-selection)
;; (global-set-key (kbd "C-v") 'acg-clipboard-paste-replace-selection-indent)

;; acg-fill-commands
;; (global-set-key (kbd "C-p") 'fill-paragraph)
;; (global-set-key (kbd "C-S-P") 'acg-unfill-paragraph)
;; (global-set-key (kbd "M-p") (crux-with-region-or-line fill-region))
;; (global-set-key (kbd "M-S-P") (crux-with-region-or-line acg-unfill-region))

;; acg-indenting
(global-set-key (kbd "C-i") (crux-with-region-or-line indent-region))
(global-set-key (kbd "C-S-I") 'acg-indent-region-or-buffer)

;; acg-killing-commands
(acg-force-global-set-key "<C-backspace>" 'acg-backward-kill-word)
(acg-force-global-set-key "<C-S-backspace>" 'acg-kill-line-or-region-backwards)
(acg-force-global-set-key "<M-backspace>" 'acg-backward-kill-sexp)
(acg-force-global-set-key "<C-S-delete>" 'acg-kill-line-or-region)
(acg-force-global-set-key "<M-delete>" 'acg-kill-sexp)
(global-set-key (kbd "<S-delete>") 'acg-kill-whole-line-or-region-lines)
(global-set-key (kbd "<M-S-delete>") 'acg-kill-whole-line-or-region-lines-and-move-up)
(acg-force-global-set-key "<S-backspace>" 'acg-kill-whole-line-or-region-content)

;; acg-moving-cursor
(global-set-key (kbd "<home>") 'acg-move-beginning-of-line)
(global-set-key (kbd "<C-M-left>") 'acg-move-beginning-of-line)
(global-set-key (kbd "<C-M-right>") 'move-end-of-line)

;; acg-moving-lines
;; (global-set-key (kbd "<M-up>") 'acg-move-lines-up)
;; (global-set-key (kbd "<M-down>") 'acg-move-lines-down)

;; acg-new-lines
;; (global-set-key (kbd "<S-return>") 'acg-newline-above)

;; acg-open-file-in
(global-set-key (kbd "C-c t") 'acg-open-in-terminal)
(global-set-key (kbd "C-c o") 'acg-open-in-desktop)

;; acg-scratch-buffer
; (global-unset-key (kbd "C-n"))
;;(global-set-key (kbd "C-t") 'acg-scratch-buffer-create)

;; acg-super-keyboard-quit
;;; esc always quits
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(eval-after-load "help-mode" '(define-key help-mode-map [escape] 'kill-buffer-and-window))
(eval-after-load "anaconda-mode-view-mode" '(define-key anaconda-mode-view-mode-map [escape] 'kill-buffer-and-window))
(global-set-key [escape] 'acg-super-keyboard-quit)
;; rebind ESC functions to C-<escape>
(define-key key-translation-map (kbd "C-<escape>") (kbd "ESC"))

;; acg-windows-and-buffers
;; (global-set-key (kbd "M-1") 'other-window)
;; (global-set-key (kbd "M-q") 'crux-switch-to-previous-buffer)
;; (global-set-key (kbd "C-1") 'delete-other-windows)
;; (global-set-key (kbd "C-!") 'delete-window)
;; (global-set-key (kbd "C-2") 'acg-split-window-right)
;; (global-set-key (kbd "C-@") 'acg-split-window-below)
;; (global-set-key (kbd "C-q") 'delete-window)
;; (acg-force-global-set-key (kbd "C-w") 'acg-kill-buffer-and-window)
;; (global-set-key (kbd "C-S-T") 'acg-reopen-killed-file)

;; others
;; (global-set-key (kbd "<f12>") 'acg-concentration-mode)


;; Todo List

;; - Ver questão cursor não mudar com scroll (prelude ui)
;; - Ver smart-mode-line


(provide 'acg-keybindings)
