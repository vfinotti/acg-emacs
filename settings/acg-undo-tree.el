;; sensible undo
(global-undo-tree-mode)
(diminish 'undo-tree-mode)

;; autosave the undo-tree history
(setq undo-tree-history-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq undo-tree-auto-save-history t)

(define-key undo-tree-map (kbd "C-/") nil)
(define-key undo-tree-visualizer-mode-map (kbd "RET") 'undo-tree-visualizer-quit)
(define-key undo-tree-visualizer-mode-map (kbd "C-g") 'undo-tree-visualizer-quit)
(define-key undo-tree-visualizer-mode-map [escape] 'undo-tree-visualizer-quit)
