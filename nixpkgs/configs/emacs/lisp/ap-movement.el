(use-package emacs
  :config
  ;; Jump between windows using arrows
  (when (fboundp 'windmove-default-keybindings)
    (windmove-default-keybindings))
  :bind
  ;; Use simpler shortcuts to resize windows
  ("S-C-<left>" . shrink-window-horizontally)
  ("S-C-<right>" . enlarge-window-horizontally)
  ("S-C-<down>". shrink-window)
  ("S-C-<up>" . enlarge-window))

;; Jump to another visible location
(use-package avy
  :bind
  ("C-ò" . avy-goto-word-1)
  ("M-ò" . avy-resume))

(provide 'ap-movement)
