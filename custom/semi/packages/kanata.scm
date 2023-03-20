(define-module (semi packages kanata)
  #:use-module (guix build-system cargo)
  #:use-module (guix download)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages crates-io)
  #:use-module (semi packages)
  #:use-module (semi packages crates-io))

(define-public rust-signal-hook-0.3
  (package
    (name "rust-signal-hook")
    (version "0.3.14")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "signal-hook" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "17g2bc1c74m1zvnfxzwym0c8wczbvjg5qm3bq97ld616kvlbalx2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-signal-hook-registry" ,rust-signal-hook-registry-1))
       #:cargo-development-inputs (("rust-serial-test" ,rust-serial-test-0.5))))
    (home-page "https://github.com/vorner/signal-hook")
    (synopsis "Unix signal handling")
    (description "Unix signal handling")
    (license (list license:asl2.0 license:expat))))

(define-public rust-heapless-0.7
  (package
    (name "rust-heapless")
    (version "0.7.16")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "heapless" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0hq7ifnzpdj9rc06rhys4qa3qkr6q3k01kwfca0ak7lbl4jbq16v"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-atomic-polyfill" ,rust-atomic-polyfill-0.1)
                       ("rust-atomic-polyfill" ,rust-atomic-polyfill-0.1)
                       ("rust-atomic-polyfill" ,rust-atomic-polyfill-0.1)
                       ("rust-defmt" ,rust-defmt-0.3)
                       ("rust-hash32" ,rust-hash32-0.2)
                       ("rust-rustc-version" ,rust-rustc-version-0.4)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-spin" ,rust-spin-0.9)
                       ("rust-stable-deref-trait" ,rust-stable-deref-trait-1)
                       ("rust-ufmt-write" ,rust-ufmt-write-0.1))
       #:cargo-development-inputs (("rust-ufmt" ,rust-ufmt-0.1))))
    (home-page "https://github.com/japaric/heapless")
    (synopsis
     "`static` friendly data structures that don't require dynamic memory allocation")
    (description
     "`static` friendly data structures that don't require dynamic memory allocation")
    (license (list license:expat license:asl2.0))))

(define-public rust-kanata-keyberon-0.8
  (package
    (name "rust-kanata-keyberon")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "kanata-keyberon" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
		"0xcwk5kfxwc9h3npi1k4rpmn6kgvfdz8yj6d67rj34bsr9nhc3cn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-arraydeque" ,rust-arraydeque-0.4)
                       ("rust-either" ,rust-either-1)
                       ("rust-embedded-hal" ,rust-embedded-hal-0.2)
                       ("rust-heapless" ,rust-heapless-0.7)
                       ("rust-kanata-keyberon-macros" ,rust-kanata-keyberon-macros-0.1)
                       ("rust-usb-device" ,rust-usb-device-0.2))))
    (home-page "https://github.com/TeXitoi/keyberon")
    (synopsis
     "Pure Rust keyboard firmware. Fork intended for use with kanata.")
    (description
     "Pure Rust keyboard firmware. Fork intended for use with kanata.")
    (license license:expat)))

(define-public rust-kanata-keyberon-macros-0.1
  (package
   (name "rust-kanata-keyberon-macros")
   (version "0.1.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "kanata-keyberon-macros" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1722smq92y0zr638wz8drkfb83rsnnaqpi0cvjr3znsyqcm6vdnv"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-proc-macro-error" ,rust-proc-macro-error-1)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1))))
   (home-page "")
   (synopsis "Macros for keyberon. Fork for kanata project")
   (description "Macros for keyberon.  Fork for kanata project")
   (license license:expat)))

(define-public kanata-1
  (package
   (name "kanata")
   (version "1.2.0-prerelease-1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "kanata" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "12q3hrjrwn4d2104m6nlma1im90nwga6w3lx7yl6w006b3rqgm7v"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                      ("rust-clap" ,rust-clap-3)
                      ("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
                      ("rust-encode-unicode" ,rust-encode-unicode-0.3)
                      ("rust-evdev" ,rust-evdev-0.12)
                      ("rust-inotify" ,rust-inotify-0.10)
                      ("rust-interception" ,rust-interception-0.1)
                      ("rust-kanata-keyberon" ,rust-kanata-keyberon-0.8)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-mio" ,rust-mio-0.8)
                      ("rust-native-windows-gui" ,rust-native-windows-gui-1)
                      ("rust-net2" ,rust-net2-0.2)
                      ("rust-nix" ,rust-nix-0.26)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-radix-trie" ,rust-radix-trie-0.2)
                      ("rust-rustc-hash" ,rust-rustc-hash-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-signal-hook" ,rust-signal-hook-0.3)
                      ("rust-simplelog" ,rust-simplelog-0.12)
                      ("rust-winapi" ,rust-winapi-0.3))))
   (home-page "https://github.com/jtroo/kanata")
   (synopsis "Multi-layer keyboard customization")
   (description "Multi-layer keyboard customization")
   (license license:lgpl3)))
