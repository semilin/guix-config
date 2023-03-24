(set-face-attribute 'default nil
		    :font "Iosevka Nerd Font"
		    :height (round (* 1.5 150)))

(setq default-frame-alist '((cursor-color . "white")
			    (vertical-scroll-bars . nil)
			    (font . "Iosevka Nerd Font")))

(load-file "~/.config/emacs/config.el")

(setq custom-file "~/.config/emacs/custom.el")
(load custom-file)
