(defun ap/dired-goto-parent ()
  "Browse to the parent directory"
  (interactive)
  (find-alternate-file ".."))

;; Extra functionality for dired
(use-package dired-x
  :ensure nil)

;; File manager
(use-package dired
  :ensure nil
  :config
  (put 'dired-find-alternate-file 'disabled nil)
  (setq dired-listing-switches "-lahX --group-directories-first")
  (setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))
  :hook
  (dired-mode . dired-hide-details-mode)
  (dired-mode . dired-omit-mode)
  (dired-mode . (lambda () (display-line-numbers-mode -1)))
  :bind
  (:map dired-mode-map
	("RET" . dired-find-alternate-file)
	("^" . ap/dired-goto-parent)
	("h" . dired-omit-mode)))

;; Subtree support for dired
(use-package dired-subtree
  :bind
  (:map dired-mode-map
	("TAB" . dired-subtree-toggle)))

;; Extra font lock rules
(use-package diredfl
  :hook (dired-mode . diredfl-global-mode))

(provide 'ap-dired)
