(use-package org
  :config
  (setq org-capture-templates
	'(("t" "Inbox" entry (file+headline "~/org/capture/inbox.org" "Inbox")
	   "* TODO %?\nSCHEDULED: %t\n%i")
	  ("s" "Schedule" entry (file+headline "~/org/capture/inbox.org" "Inbox")
	   ("* %?\nSCHEDULED: %t\n%i"))))

  (setq org-refile-targets (quote (("school.org" :maxlevel . 2)
				   ("personal_projects.org" :maxlevel . 2)
				   ("someday.org" :maxlevel . 2))))
  :bind (("C-c c" . org-capture)
	 ("C-c a" . org-agenda))
  :hook (org-mode . auto-fill-mode))

(use-package org-superstar
  :hook (org-mode . org-superstar-mode))

(use-package org-roam
  :defer t
  :init
  (setq org-roam-v2-ack t)
  :custom
  (org-roam-directory (file-truename "~/org/roam"))
  :config
  (require 'org-roam-protocol)
  :bind (("C-c r u" . org-roam-ui-open)
	 ("C-c r u" . org-roam-buffer-toggle)
	 ("C-c r f" . org-roam-node-find)
	 ("C-c r i" . org-roam-node-insert)
	 ("C-c r r" . org-roam-node-random)))

(use-package org-roam-ui
  :defer t
  :init
  (setq org-roam-v2-ack t)
  :custom
  (org-roam-directory (file-truename "~/org/roam"))
  :config
  (require 'org-roam-protocol)
  :bind (("C-c r u" . org-roam-ui-open)))

(use-package org-super-agenda
  :straight t
  :config
  (org-super-agenda-mode)
  (setq org-super-agenda-groups
	'((:auto-group t))))