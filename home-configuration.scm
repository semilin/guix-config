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
	    (list "emacs-company"
                  "emacs-god-mode"
                  "emacs-consult"
                  "emacs-base16-theme"
                  "emacs-use-package"
                  "emacs-vertico"
                  "emacs-geiser"
		  "emacs-paredit"
		  "emacs-dracula-theme"
                  "emacs-guix"
		  "emacs-geiser-guile"
		  "emacs-rainbow-delimiters"
		  "emacs-org"
		  "exa"
                  "xremap"
                  "rust@1.63"
                  "gcc"
                  "automake"
                  "autoconf"
                  "graphviz"
                  "gettext"
                  "texinfo"
                  "strace"
                  "help2man"
                  "ripgrep"
                  "fd"
                  "bat"
                  "make"
                  "rust-lock-api"
                  "go@1.19"
                  "git"
                  "btop"
                  "htop"
                  "keepassxc"
                  "ungoogled-chromium"
                  "zig@0.10"
                  "anki"
                  "curl"
                  "guile"
                  "nyxt"
                  "neofetch"
                  "zsh"
                  "emacs")))
 
 ;; Below is the list of Home services.  To search for available
 ;; services, run 'guix home search KEYWORD' in a terminal.
 (services
  (list (simple-service 'main-env-vars-service
			home-environment-variables-service-type
			`(("SHELL" . ,(file-append zsh "/bin/zsh"))
			  ("EDITOR" . "emacs")
			  ("PATH" . "$PATH:$HOME/.local/bin")))
	(service home-zsh-service-type
		 (home-zsh-configuration
		  (zshrc (list (local-file "/home/semi/code/guix-config/zshrc"
					   "zshrc")))))
	(simple-service 'qtile-hy2py-service
			home-activation-service-type
			(system "hy2py /home/semi/code/guix-config/qtile.hy > /home/semi/code/guix-config/qtile/config.py"))
	(service home-xdg-configuration-files-service-type
		 `(("alacritty.yml" ,(local-file "./alacritty.yml"))
		   ("qtile/config.py" ,(local-file "./qtile/config.py"))
		   ("qtile/background.jpg" ,(local-file "./qtile/background.jpg"))
		   ("emacs/init.el" ,(local-file "./emacs/init.el"))
		   ("emacs/early-init.el" ,(local-file "./emacs/early-init.el"))
		   ("emacs/config.el" ,(local-file "./emacs/config.el")))))))
