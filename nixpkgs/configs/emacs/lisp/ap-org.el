;; Org-mode
;; Outline-based note manager and organizer

;; Setup fonts for org-mode
(defun ap/org-fonts-setup ()
  (font-lock-add-keywords 'org-mode
                          '(("^ *\\([-]\\) "
                             (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
  (dolist (face '((org-level-1 . 1.2)
                  (org-level-2 . 1.15)
                  (org-level-3 . 1.1)
                  (org-level-4 . 1.05)
                  (org-level-5 . 1.0)
                  (org-level-6 . 1.0)
                  (org-level-7 . 1.0)
                  (org-level-8 . 1.0)))
    (set-face-attribute (car face) nil :font "Iosevka" :weight 'bold :height (cdr face))))

;; Center text when in org-mode
(defun ap/org-mode-visual-fill ()
  (setq visual-fill-column-width 100
	visual-fill-column-center-text t)
  (visual-fill-column-mode 1))

;; Org-mode hook
(defun ap/org-mode-setup ()
  (ap/org-mode-visual-fill)
  (hl-line-mode -1)
  (display-line-numbers-mode -1)
  (org-bullets-mode 1)
  (org-indent-mode)
  (visual-line-mode 1))

(use-package visual-fill-column)

(use-package org-bullets)

(use-package tex-mode
  :ensure auctex)
(use-package cdlatex
  :config
  (add-hook 'org-mode-hook #'turn-on-org-cdlatex))

(use-package org
  :commands org-capture
  :config
  (ap/org-fonts-setup)
  (setq org-ellipsis " ▼")
  (setq org-export-with-toc nil)
  (setq org-latex-packages-alist '(("margin=2cm" "geometry")))
  (setq org-goto-auto-isearch nil)
  (setq org-directory (expand-file-name "~/Org/TODOS/"))
  ;; Org-capture
  (setq org-capture-templates
	'(("b" "Books")
	  ("be" "Essays" entry
	   (file+headline "books.org" "Essays")
	   "* %^{Title} %?\n - *author:* \n - *publisher:* \n - *keywords:* ")
	  ("bn" "Narrative books" entry
	   (file+headline "books.org" "Narrative")
	   "* %^{Title} %?\n - *author:* \n - *publisher:* \n - *keywords:* ")
	  ("bt" "Technical books" entry
	   (file+headline "books.org" "Technical")
	   "* %^{Title} %?\n - *author:* \n - *publisher:* \n - *keywords:* ")
	  ("m" "Movies" table-line
	   (file "movies.org")
	   "| %^{Title} | %^{Director} | %^{Genre} | %^{Keywords} |")))
  (setq org-default-notes-file (concat org-directory "/notes.org"))
  :hook (org-mode . ap/org-mode-setup))

(provide 'ap-org)
