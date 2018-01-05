;; disabling tick sounds
(setq pomidor-sound-tick nil
      pomidor-sound-tack nil)

(setq pomidor-update-interval (* 1 1)) ; seconds

(setq pomidor-seconds 60)

;; turn off fci-mode in pomidor
(add-hook 'pomidor-mode-hook
          (lambda ()
            (fci-mode 0)))

;; notify me after my 5 minutes break 
(defun my-pomidor-update-hook ()
  (let ((break-duration (* 60 5)) ;; seconds
        (ellapsed (time-to-seconds (pomidor-break-duration))))
    (when (and (> ellapsed break-duration) (pomidor--break (pomidor--current-state)))
      (pomidor-play-sound-file-async pomidor-sound-overwork))))

 (add-hook 'pomidor-update-hook #'my-pomidor-update-hook)
