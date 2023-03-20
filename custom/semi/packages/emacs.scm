(define-module (semi packages emacs)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix utils)
  #:use-module (guix packages)
  #:use-module (guix build-system emacs )
  #:use-module ((guix licenses) #:prefix license:))

(define-public emacs-age
  (package
    (name "emacs-age")
    (version "v0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://github.com/anticomputer/age.el/archive/refs/tags/"
			   version ".tar.gz"))
       (file-name (git-file-name name version))
       (sha256
	(base32 "0i1fx6xc7894kh0zwlawvgcjw7gahnbd3r8fksipi7fldbbgjhk5"))))
    (build-system emacs-build-system)
    (arguments
     `(#:tests? #f))
    (home-page "https://github.com/anticomputer/age.el")
    (synopsis "Age file encryption for emacs")
    (description "Age file encryption for emacs")
    (license license:gpl3)))
