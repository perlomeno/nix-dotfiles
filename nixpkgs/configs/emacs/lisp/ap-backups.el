;; Backup behaviour
(use-package emacs
  :config
  (setq backup-directory-alist
	`(("." . ,(concat user-emacs-directory "backups"))))
  (setq backup-by-copying t)
  (setq version-control t)
  (setq delete-old-versions t)
  (setq kept-new-versions 6)
  (setq kept-old-versions 2))

(provide 'ap-backups)
