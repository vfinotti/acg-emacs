;;--------------------------------------------------------------------
;; Personal data
;;--------------------------------------------------------------------

(setq user-full-name "Vitor Finotti")
(setq user-login-name "vfinotti")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(comint-completion-addsuffix t)
 '(comint-completion-autolist t)
 '(comint-input-ignoredups t)
 '(comint-move-point-for-output t)
 '(comint-scroll-show-maximum-output t)
 '(comint-scroll-to-bottom-on-input t)
 '(focus-follows-mouse t)
 '(minimap-width-fraction 0.15)
 '(minimap-window-location (quote right))
 '(org-export-latex-href-format "\\href{%s}{%s}")
 '(org-export-latex-hyperref-format "\\hyperref[%s]{%s}")
 '(org-export-latex-hyperref-options-format
   "\\hypersetup{
  pdfkeywords={%s},
  pdfsubject={%s},
  pdfcreator={Emacs Org-mode version %s}}
")
 '(org-latex-default-packages-alist
   (quote
    (("AUTO" "inputenc" t)
     ("T1" "fontenc" t)
     ("" "fixltx2e" nil)
     ("" "graphicx" t)
     ("" "longtable" nil)
     ("" "float" nil)
     ("" "wrapfig" nil)
     ("" "rotating" nil)
     ("normalem" "ulem" t)
     ("" "amsmath" t)
     ("" "textcomp" t)
     ("" "marvosym" t)
     ("" "wasysym" t)
     ("" "amssymb" t)
     ("colorlinks=true" "hyperref" nil))))
 '(org-latex-with-hyperref t)
 '(package-selected-packages
   (quote
    (org-journal nyan-mode dired-details helm-spotify-plus helm-spotify tomatinho yasnippet which-key visual-fill-column use-package undo-tree tabbar smooth-scrolling smartparens smart-forward rainbow-mode org-ref multiple-cursors monokai-theme minimap markdown-mode magit highlight-indent-guides highlight helm-projectile frame-cmds form-feed fix-word fill-column-indicator ein diminish crux company-quickhelp auto-dim-other-buffers auctex anzu)))
 '(show-paren-mode t)
 '(sp-override-key-bindings
   (quote
    (("M-s")
     ("M-<up>")
     ("M-<down>")
     ("M-r")
     ("C-}")
     ("C-{")
     ("M-S")
     ("C-M-f")
     ("C-M-b")
     ("C-M-d")
     ("C-M-a")
     ("C-S-d")
     ("C-S-a")
     ("C-M-e")
     ("C-M-u")
     ("C-M-n")
     ("C-M-p")
     ("C-M-k")
     ("C-M-w")
     ("M-<delete>")
     ("M-<backspace>")
     ("C-<right>")
     ("C-<left>")
     ("C-M-<left>")
     ("C-M-<right>")
     ("M-D")
     ("C-M-<delete>")
     ("C-M-<backspace>")
     ("C-S-<backspace>")
     ("C-]")
     ("C-M-]")
     ("M-F")
     ("M-B")
     ("C-0" . sp-forward-slurp-sexp)
     ("C-9" . sp-backward-slurp-sexp)
     ("C-)" . sp-forward-barf-sexp)
     ("C-(" . sp-backward-barf-sexp)
     ("M-0" . sp-forward-barf-sexp)
     ("M-9" . sp-backward-barf-sexp)
     ("M-<right>" . sp-forward-sexp)
     ("M-<left>" . sp-backward-sexp)
     ("M-t" . sp-transpose-sexp)
     ("M-S-T" . sp-transpose-hybrid-sexp)
     ("<M-delete>"))))
 '(tabbar-buffer-home-button
   (cons
    (cons " " tabbar-home-button-enabled-image)
    (cons " " tabbar-home-button-disabled-image)))
 '(tabbar-home-button
   (cons
    (cons " " tabbar-home-button-enabled-image)
    (cons " " tabbar-home-button-disabled-image)))
 '(tabbar-scroll-left-button
   (cons
    (cons "" tabbar-scroll-left-button-enabled-image)
    (cons "" nil)))
 '(tabbar-scroll-right-button
   (cons
    (cons "" tabbar-scroll-right-button-enabled-image)
    (cons "" nil)))
 '(tool-bar-mode nil)
 '(vhdl-clock-edge-condition (quote function))
 '(vhdl-company-name "Sao Paulo Research and Analysis Center,  SPRACE")
 '(vhdl-copyright-string
   "-------------------------------------------------------------------------------
-- Copyright (c) <year> <company>

-- This program is free software: you can redistribute it and/or
-- modify it under the terms of the GNU Lesser General Public License
-- as published by the Free Software Foundation, either version 3 of
-- the License, or (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful, but
-- WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-- Lesser General Public License for more details.
--
-- You should have received a copy of the GNU Lesser General Public
-- License along with this program. If not, see
-- <http://www.gnu.org/licenses/>.
")
 '(vhdl-reset-active-high t)
 '(vhdl-reset-kind (quote sync)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(minimap-active-region-background ((((background dark)) (:background "#2A2A2A222222")) (t (:background "#D3D3D3222222"))) nil :group)
 '(tabbar-button ((t (:inherit tabbar-default :weight normal))))
 '(tabbar-button-highlight ((t (:inherit tabbar-default))))
 '(tabbar-default ((t (:inherit default :background "#3d3c3a" :foreground "#999" :weight medium :overline nil :underline nil :height 0.9 :widthtype semi-condensed))))
 '(tabbar-highlight ((t (:inherit tabbar-default :background "#FA9"))))
 '(tabbar-modified ((t (:inherit tabbar-default))))
 '(tabbar-selected ((t (:inherit tabbar-default :background "#BBBBBF" :foreground "#333"))))
 '(tabbar-selected-modified ((t (:inherit tabbar-selected))))
 '(tabbar-separator ((t (:inherit tabbar-default :background "#333"))))
 '(tabbar-unselected ((t (:inherit tabbar-default)))))
