(setq gc-cons-threshold 1000000000)
(add-hook 'after-init-hook (lambda () (setq gc-cons-threshold 500000)))

(setq default-frame-alist '((cursor-color . "white")
			    (vertical-scroll-bars . nil)))

(load-file "~/.config/emacs/config.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(warning-suppress-types '((comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
