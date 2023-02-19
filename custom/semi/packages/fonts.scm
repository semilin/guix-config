(define-module (semi packages fonts)
  #:use-module (guix download)
  #:use-module (guix utils)
  #:use-module (guix packages)
  #:use-module (guix build-system font)
  #:use-module ((guix licenses) #:prefix license:))

(define-public font-nerd-iosevka
  (package
   (name "font-nerd-iosevka")
   (version "2.3.3")
   (source
    (origin
     (method url-fetch/zipbomb)
     (uri (string-append "https://github.com/ryanoasis/nerd-fonts"
			 "/releases/download/v" version
			 "/Iosevka"
			 ".zip"))
     (sha256
      (base32 "0qg88d2rqbm1x0vfyyr495dznnviga8979dg0ik5yw27fc43hrjj"))))
   (build-system font-build-system)
   (home-page "https://www.nerdfonts.com")
   (synopsis "Nerd Fonts patched Iosevka")
   (description "Nerd Fonts patched Iosevka")
   (license (list license:silofl1.1
		  license:expat))))
