(deftheme acg-dark "A dark theme.")

(load-theme 'acg-common-faces)

(set-face-background 'hl-line "#000000")
(set-cursor-color "#FFFFFF")

(custom-theme-set-faces
 'acg-dark
 
 '(default
    ((t (:inherit nil :stipple nil :background "#1B1B2A" :foreground "#ddd"
                  :inverse-video nil :box nil :strike-through nil
                  :overline nil :underline nil :slant normal :weight normal
                  :height 113 :width normal :foundry "MS  "
                  :family "Consolas"))))
 '(font-lock-builtin-face ((t (:foreground "#ffa0a0"))))
 '(font-lock-comment-face ((t (:foreground "#666"))))
 '(font-lock-constant-face ((t (:foreground "Aquamarine"))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face :foreground "#8866aa"))))
 '(font-lock-function-name-face ((t (:foreground "#bb55ff" :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "deep sky blue" :weight bold))))
 '(font-lock-string-face ((t (:foreground "#88d"))))
 '(font-lock-type-face ((t (:foreground "PaleGreen" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "#ddcc82"))))
 
 '(fringe ((t (:background "black"))))
 ;; '(region ((t (:background "gold" :distant-foreground "white"))))
 )


(provide-theme 'acg-dark)
