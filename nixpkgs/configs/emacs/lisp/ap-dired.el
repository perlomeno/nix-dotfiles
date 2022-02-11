;; Dired
;; Emacs file manager

(use-package dired-x
  :ensure nil)

(defun ap/dired-goto-parent ()
  (interactive)
  (find-alternate-file ".."))

(defun ap/dired-mode-setup ()
  (dired-hide-details-mode)
  (dired-omit-mode)
  (display-line-numbers-mode -1))

(use-package dired
  :ensure nil
  :config
  (put 'dired-find-alternate-file 'disabled nil)
  (setq dired-listing-switches "-lahX --group-directories-first")
  (setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))
  :hook (dired-mode . ap/dired-mode-setup)
  :bind (:map dired-mode-map
	      ("RET" . dired-find-alternate-file)
	      ("^" . ap/dired-goto-parent)
	      ("h" . dired-omit-mode)))

(use-package dired-subtree
  :bind (:map dired-mode-map ("TAB" . dired-subtree-toggle)))

(use-package diredfl
  :hook (dired-mode . diredfl-global-mode))

(provide 'ap-dired)
