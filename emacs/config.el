(setq use-package-always-ensure nil)

(global-hl-line-mode)

(setq backup-directory-alist `(("." . "~/.config/emacs/saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-version 6
      kept-old-version 2
      version-control t)

(add-hook 'prog-mode-hook (lambda ()
			    (setq display-line-numbers-type 'relative)
			    (display-line-numbers-mode)
			    (electric-pair-mode)))

(use-package tramp
  :config (setq tramp-default-method "ssh"))

(use-package hy-mode
  :mode "\\.hy\\'"
  :defer t)

(use-package rustic
  :mode ("\\.rs\\'" . rustic-mode)
  :defer t)

(use-package yaml-mode
  :mode ("\\.yaml\\'" . yaml-mode)
  :defer t)

(use-package company
  :config
  (setq company-idle-delay 0)
  :hook (prog-mode . company-mode)
  :defer t)

(use-package eglot
  :defer t)

(use-package ligature
  :hook (prog-mode . ligature-mode)
  :config
  (ligature-set-ligatures '(c-mode rust-mode)
			  '("->" "==" "!=" "<=" ">=" "=>" "/*" "*/"))
  (ligature-set-ligatures '(lisp-mode sly-mrepl-mode sly-mode)
			  '("->" "->>" "<>" "<=" ">=" "/=" ";;")))

(use-package vertico
  :config (vertico-mode +1))

(use-package savehist
  :init (savehist-mode))

(use-package orderless
  :init (setq completion-styles '(orderless basic)
	      completion-category-defaults nil
	      completion-category-overrides ''(file (styles partial-completion))))

(use-package marginalia
  :config (marginalia-mode))

(use-package embark
  :bind (("C-." . embark-act)
	 ("M-." . embark-dwim)
	 ("C-h B" . embark-bindings))
  :init (setq prefix-help-command #'embark-prefix-help-command)
  :config
  (add-to-list 'display-buffer-alist
	       '("\\`\\*Embark Collect \\(Live\\|Completions\\)\\*"
		 nil
		 (window-parameters (mode-line-format . none)))))

(use-package consult
  :bind (("C-x b" . consult-buffer)
	 ("C-x p b" . consult-project-buffer)))

(use-package embark-consult
  :hook (embark-collect-mode . consult-preview-at-point-mode))

(use-package which-key
  :config
  (setq which-key-idle-delay 0.1)
  (which-key-mode))

(use-package expand-region
  :bind ("C-;" . er/expand-region))

(use-package avy
  :init (setq avy-keys '(?s ?r ?n ?t ?d ?a ?i ?h ?m ?g))
  :bind ("C-," . avy-goto-word-1))

(use-package dashboard
  :config (dashboard-setup-startup-hook))

(use-package telephone-line
  :config (telephone-line-mode +1))

(use-package paredit
  :hook ((lisp-mode emacs-lisp-mode scheme-mode hy-mode) . paredit-mode))

(use-package puni
  :hook (rust-mode . puni-mode))

(use-package rainbow-delimiters
  :hook ((lisp-mode emacs-lisp-mode scheme-mode hy-mode) . rainbow-delimiters-mode))

(use-package aggressive-indent
  :hook ((lisp-mode emacs-lisp-mode scheme-mode hy-mode) . aggressive-indent-mode))

(use-package magit
  :bind (("C-x g" . magit)))

(use-package projectile)

(use-package diff-hl
  :config (global-diff-hl-mode +1))

(use-package circe
  :config
  ;; This loads my libera.chat authentication information, which isn't
  ;; stored here.
  (load-file "/home/semi/.config/emacs/circe.el"))

(load-file "/home/semi/.config/emacs/org.el")
