;; This "home-environment" file can be passed to 'guix home reconfigure'
;; to reproduce the content of your profile.  This is "symbolic": it only
;; specifies package names.  To reproduce the exact same profile, you also
;; need to capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

(use-modules (semi packages)
	     (semi packages xremap)
	     (gnu home)
	     (gnu home services)
	     (gnu home services shepherd)
	     (gnu packages)
	     (gnu packages shells)
	     (gnu packages bash)
	     (gnu services)
	     (gnu services shepherd)
	     (guix gexp)
	     (guix records)
	     (gnu home services shells)
	     (ice-9 match))

(home-environment
 ;; Below is the list of packages that will show up in your
 ;; Home profile, under ~/.guix-home/profile.
 (packages (specifications->packages
	    (list "anki"
		  "autoconf"
		  "automake"
		  "bat"
		  "btop"
		  "carp"
		  "ccls"
		  "curl"
		  "emacs"
		  "emacs-carp"
		  "emacs-circe"
		  "emacs-company"
		  "emacs-consult"
		  "emacs-corfu"
		  "emacs-eglot"
		  "emacs-elfeed"
		  "emacs-geiser"
		  "emacs-geiser-guile"
		  "emacs-god-mode"
		  "emacs-guix"
		  "emacs-hy-mode"
		  "emacs-magit"
		  "emacs-modus-themes"
		  "emacs-org"
		  "emacs-org-roam"
		  "emacs-org-roam-ui"
		  "emacs-org-super-agenda"
		  "emacs-paredit" ;; might obsolete with puni
		  "emacs-projectile"
		  "emacs-puni"
		  "emacs-rainbow-delimiters"
		  "emacs-rustic"
		  "emacs-sly"
		  "emacs-use-package"
		  "emacs-vertico"
		  "emacs-yaml-mode"
		  "exa"
		  "fd"
		  "fish"
		  "gcc"
		  "gettext"
		  "git"
		  "go"
		  "graphviz"
		  "guile"
		  "help2man"
		  "htop"
		  "keepassxc"
		  "make"
		  "neofetch"
		  "nyxt"
		  "python-hy"
		  "ripgrep"
		  "rust"
		  "rust-lock-api"
		  "strace"
		  "texinfo"
		  "xremap"
		  ;; "ungoogled-chromium"
		  ;; "zig"
		  "zsh")))
 
 ;; Below is the list of Home services.  To search for available
 ;; services, run 'guix home search KEYWORD' in a terminal.
 (services
  (list (simple-service 'main-env-vars-service
			home-environment-variables-service-type
			`(("SHELL" . ,(file-append bash "/bin/sh"))
			  ("EDITOR" . "emacs")
			  ("PATH" . "$PATH:$HOME/.local/bin")))
	(simple-service 'qtile-hy2py-service
			home-activation-service-type
			(system "hy2py /home/semi/code/guix-config/qtile.hy > /home/semi/code/guix-config/qtile/config.py"))
	(service home-xdg-configuration-files-service-type
		 `(("alacritty.yml" ,(local-file "./alacritty.yml"))
		   ("qtile/config.py" ,(local-file "./qtile/config.py"))
		   ("qtile/background.jpg" ,(local-file "./qtile/background.jpg"))
		   ("fish/config.fish" ,(local-file "./config.fish"))
		   ("emacs/init.el" ,(local-file "./emacs/init.el"))
		   ("emacs/early-init.el" ,(local-file "./emacs/early-init.el"))
		   ("emacs/config.el" ,(local-file "./emacs/config.el"))
		   ("emacs/org.el" ,(local-file "./emacs/org.el")))))))
