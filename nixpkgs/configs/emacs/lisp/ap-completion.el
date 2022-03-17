;; Persist history over Emacs restarts
(use-package savehist
  :init
  (savehist-mode))

;; Completion method
(use-package orderless
  :config
  (setq completion-styles '(orderless))
  (setq completion-category-defaults nil)
  (setq completion-category-overrides '((file (styles partial-completion)))))

;; `completion-in-region' popup
(use-package corfu
  :config
  (setq corfu-cycle t)
  (setq corfu-auto t)
  (setq corfu-quit-no-match t)
  :init
  (corfu-global-mode))

;; Text-based completion prefixes
(use-package kind-icon
  :ensure t
  :after corfu
  :config
  (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter)
  (setq kind-icon-default-face 'corfu-default)
  (setq kind-icon-use-icons nil))

(use-package emacs
  :init
  ;; TAB cycle if there are only few candidates
  (setq completion-cycle-threshold 2)
  ;; Enable indentation+completion using the TAB key.
  (setq tab-always-indent 'complete))

;; Dynamic abbreviation package
(use-package dabbrev
  ;; Swap M-/ and C-M-/
  :bind (("M-/" . dabbrev-completion)
         ("C-M-/" . dabbrev-expand)))

(provide 'ap-completion)
