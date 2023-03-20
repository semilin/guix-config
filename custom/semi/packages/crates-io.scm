(define-module (semi packages crates-io)
  #:use-module (guix git-download)
  #:use-module (guix download)
  #:use-module (guix utils)
  #:use-module (guix build-system cargo)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-lock-api-0.4
  (package
   (name "rust-lock-api")
   (version "0.4.9")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "lock_api" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1py41vk243hwk345nhkn5nw0bd4m03gzjmprdjqq6rg5dwv12l23"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-autocfg" ,rust-autocfg-1)
                      ("rust-owning-ref" ,rust-owning-ref-0.4)
                      ("rust-scopeguard" ,rust-scopeguard-1)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/Amanieu/parking_lot")
   (synopsis
    "Wrappers to create fully-featured Mutex and RwLock types. Compatible with no_std.")
   (description
    "Wrappers to create fully-featured Mutex and RwLock types.  Compatible with
no_std.")
   (license (list license:expat license:asl2.0))))

(define-public rust-ketos-derive-0.12
  (package
   (name "rust-ketos-derive")
   (version "0.12.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "ketos_derive" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0b8b3am4jd6kx8py5r79f6fp933hq6x9h077pgbqiqr12bra120y"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/murarth/ketos")
   (synopsis "Derive traits for Ketos scripting language")
   (description "Derive traits for Ketos scripting language")
   (license (list license:expat license:asl2.0))))

(define-public rust-terminfo-0.6
  (package
   (name "rust-terminfo")
   (version "0.6.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "terminfo" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "17k8vqvicd6yg0iqmkjnxjhz8h8pknv86r03nq3f3ayjmxdhclcf"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-fnv" ,rust-fnv-1)
                      ("rust-nom" ,rust-nom-4)
                      ("rust-phf" ,rust-phf-0.7)
                      ("rust-phf-codegen" ,rust-phf-codegen-0.7))))
   (home-page "https://github.com/meh/rust-terminfo")
   (synopsis "Terminal information.")
   (description "Terminal information.")
   (license license:wtfpl2)))

(define-public rust-smallstr-0.1
  (package
   (name "rust-smallstr")
   (version "0.1.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "smallstr" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "13kfxkf0v00iy06ivyl38xhsm27p0acf4r5g6q6wkfxjsns5p9ka"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1)
                      ("rust-smallvec" ,rust-smallvec-0.6))))
   (home-page "https://github.com/murarth/smallstr")
   (synopsis "String-like container based on smallvec")
   (description "String-like container based on smallvec")
   (license (list license:expat license:asl2.0))))

(define-public rust-bitflags-0.4
  (package
   (name "rust-bitflags")
   (version "0.4.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "bitflags" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "18q4xvy9m7lhqwx46x1gzy5ywvpb6h4yb89ig5iwy9qi3i3dgsld"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/bitflags/bitflags")
   (synopsis "A macro to generate structures which behave like bitflags.
")
   (description
    "This package provides a macro to generate structures which behave like bitflags.")
   (license (list license:expat license:asl2.0))))

(define-public rust-nix-0.7
  (package
   (name "rust-nix")
   (version "0.7.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "nix" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0ywf2zyxlfk9zkw50lydnn93rymaxda7925qs05c2hdnm1gmrnd0"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-0.4)
                      ("rust-cfg-if" ,rust-cfg-if-0.1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-rustc-version" ,rust-rustc-version-0.1)
                      ("rust-semver" ,rust-semver-0.1)
                      ("rust-void" ,rust-void-1))))
   (home-page "https://github.com/nix-rust/nix")
   (synopsis "Rust friendly bindings to *nix APIs")
   (description "Rust friendly bindings to *nix APIs")
   (license license:expat)))

(define-public rust-mortal-0.1
  (package
   (name "rust-mortal")
   (version "0.1.5")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "mortal" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1zxiz8ng5a60i91xxwrn72cgjf3qm8qb2m0kfqgqhmd9ws034596"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-nix" ,rust-nix-0.7)
                      ("rust-smallstr" ,rust-smallstr-0.1)
                      ("rust-terminfo" ,rust-terminfo-0.6)
                      ("rust-unicode-normalization" ,rust-unicode-normalization-0.1)
                      ("rust-unicode-width" ,rust-unicode-width-0.1)
                      ("rust-winapi" ,rust-winapi-0.3))))
   (home-page "https://github.com/murarth/mortal")
   (synopsis "Cross-platform terminal interface")
   (description "Cross-platform terminal interface")
   (license (list license:expat license:asl2.0))))

(define-public rust-linefeed-0.5
  (package
   (name "rust-linefeed")
   (version "0.5.4")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "linefeed" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0k0051bckj67xy0jd42cfrvvhfhb53611c1kbxgvnmgg21cbnajw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-dirs" ,rust-dirs-1)
                      ("rust-mortal" ,rust-mortal-0.1)
                      ("rust-winapi" ,rust-winapi-0.3))))
   (home-page "https://github.com/murarth/linefeed")
   (synopsis "Interactive terminal input reader")
   (description "Interactive terminal input reader")
   (license (list license:expat license:asl2.0))))

(define-public rust-ketos-derive-0.11
  (package
   (name "rust-ketos-derive")
   (version "0.11.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "ketos_derive" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1dq4hpx6k7bl4i216f4cm5gk99lp1ky0zhr4sgfjmyj5w490p3xc"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-0.3)
                      ("rust-quote" ,rust-quote-0.5)
                      ("rust-syn" ,rust-syn-0.13))))
   (home-page "https://github.com/murarth/ketos")
   (synopsis "Derive traits for Ketos scripting language")
   (description "Derive traits for Ketos scripting language")
   (license (list license:expat license:asl2.0))))

(define-public rust-gumdrop-derive-0.5
  (package
   (name "rust-gumdrop-derive")
   (version "0.5.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "gumdrop_derive" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1gfxl7innnk60459plhsjkyr251hl3knmljwbw3dj136zmikdi04"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-0.4)
                      ("rust-quote" ,rust-quote-0.6)
                      ("rust-syn" ,rust-syn-0.14))))
   (home-page "https://github.com/murarth/gumdrop")
   (synopsis "custom derive support for gumdrop")
   (description "custom derive support for gumdrop")
   (license (list license:expat license:asl2.0))))

(define-public rust-gumdrop-0.5
  (package
   (name "rust-gumdrop")
   (version "0.5.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "gumdrop" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0a1vijqsf0qnqi6jp4mgxggjhjmidk661vj9fd7d0rwib5wpqp1r"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-gumdrop-derive" ,rust-gumdrop-derive-0.5))))
   (home-page "https://github.com/murarth/gumdrop")
   (synopsis "Option parser with custom derive support")
   (description "Option parser with custom derive support")
   (license (list license:expat license:asl2.0))))

(define-public rust-ketos-0.11
  (package
   (name "rust-ketos")
   (version "0.11.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "ketos" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0zkd9rgscw5gplfwb5626yjq117s5cw792ai2k2wpak41cc0ma0h"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-byteorder" ,rust-byteorder-0.5)
                      ("rust-dirs" ,rust-dirs-1)
                      ("rust-gumdrop" ,rust-gumdrop-0.5)
                      ("rust-ketos-derive" ,rust-ketos-derive-0.11)
                      ("rust-linefeed" ,rust-linefeed-0.5)
                      ("rust-num" ,rust-num-0.2)
                      ("rust-rand" ,rust-rand-0.5)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-derive" ,rust-serde-derive-1))))
   (home-page "https://github.com/murarth/ketos")
   (synopsis "Lisp dialect scripting and extension language")
   (description "Lisp dialect scripting and extension language")
   (license (list license:expat license:asl2.0))))

(define-public rust-zvariant-derive-2
  (package
   (name "rust-zvariant-derive")
   (version "2.10.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "zvariant_derive" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1s9xk9c4p9vl0j2vr1abqc12mgv500sjc3fnh8ij3d1yb4i5xjp4"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro-crate" ,rust-proc-macro-crate-1)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://gitlab.freedesktop.org/dbus/zbus/")
   (synopsis "D-Bus & GVariant encoding & decoding")
   (description "D-Bus & GVariant encoding & decoding")
   (license license:expat)))

(define-public rust-zvariant-2
  (package
   (name "rust-zvariant")
   (version "2.10.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "zvariant" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0995d59vl8409mk3qrbshqrz5d76dq52szg0x2vqji07y9app356"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arrayvec" ,rust-arrayvec-0.5)
                      ("rust-byteorder" ,rust-byteorder-1)
                      ("rust-enumflags2" ,rust-enumflags2-0.6)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-bytes" ,rust-serde-bytes-0.11)
                      ("rust-static-assertions" ,rust-static-assertions-1)
                      ("rust-zvariant-derive" ,rust-zvariant-derive-2))))
   (home-page "https://gitlab.freedesktop.org/dbus/zbus/")
   (synopsis "D-Bus & GVariant encoding & decoding")
   (description "D-Bus & GVariant encoding & decoding")
   (license license:expat)))

(define-public rust-zbus-macros-1
  (package
   (name "rust-zbus-macros")
   (version "1.9.3")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "zbus_macros" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "19p0pdwdf52zkaknav0pj5qvgcf52xk8a4p3a4ymxybwhjkmjfgs"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro-crate" ,rust-proc-macro-crate-0.1)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://gitlab.freedesktop.org/dbus/zbus/")
   (synopsis "proc-macros for zbus")
   (description "proc-macros for zbus")
   (license license:expat)))

(define-public rust-serde-xml-rs-0.4
  (package
   (name "rust-serde-xml-rs")
   (version "0.4.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "serde-xml-rs" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1ykx1xkfd59gf0ijnp93xhpd457xy4zi8xv2hrr0ikvcd6h1pgzh"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-log" ,rust-log-0.4)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-xml-rs" ,rust-xml-rs-0.8))))
   (home-page "https://github.com/RReverser/serde-xml-rs")
   (synopsis "xml-rs based deserializer for Serde (compatible with 0.9+)")
   (description "xml-rs based deserializer for Serde (compatible with 0.9+)")
   (license license:expat)))

(define-public rust-nix-0.22
  (package
   (name "rust-nix")
   (version "0.22.3")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "nix" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1bsgc8vjq07a1wg9vz819bva3dvn58an4r87h80dxrfqkqanz4g4"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1)
                      ("rust-cc" ,rust-cc-1)
                      ("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-memoffset" ,rust-memoffset-0.6))))
   (home-page "https://github.com/nix-rust/nix")
   (synopsis "Rust friendly bindings to *nix APIs")
   (description "Rust friendly bindings to *nix APIs")
   (license license:expat)))

(define-public rust-enumflags2-derive-0.6
  (package
   (name "rust-enumflags2-derive")
   (version "0.6.4")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "enumflags2_derive" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1kkcwi4n76bi1c16ms00dyk4d393gdf29kpr4k9zsn5z7m7fjvll"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/NieDzejkob/enumflags2")
   (synopsis
    "Do not use directly, use the reexport in the `enumflags2` crate. This allows for better compatibility across versions.")
   (description
    "Do not use directly, use the reexport in the `enumflags2` crate.  This allows
for better compatibility across versions.")
   (license (list license:expat license:asl2.0))))

(define-public rust-enumflags2-0.6
  (package
   (name "rust-enumflags2")
   (version "0.6.4")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "enumflags2" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "182xd6cxxmadx1axnz6x73d12pzgwkc712zq2lxd4z1k48lxij43"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-enumflags2-derive" ,rust-enumflags2-derive-0.6)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/NieDzejkob/enumflags2")
   (synopsis "Enum-based bit flags")
   (description "Enum-based bit flags")
   (license (list license:expat license:asl2.0))))

(define-public rust-zbus-1
  (package
   (name "rust-zbus")
   (version "1.9.3")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "zbus" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0jgwydwjgk16dyrzdbc1k0dnqj9kv9p3fwcv92a7l9np3hlv5glw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-io" ,rust-async-io-1)
                      ("rust-byteorder" ,rust-byteorder-1)
                      ("rust-derivative" ,rust-derivative-2)
                      ("rust-enumflags2" ,rust-enumflags2-0.6)
                      ("rust-fastrand" ,rust-fastrand-1)
                      ("rust-futures" ,rust-futures-0.3)
                      ("rust-nb-connect" ,rust-nb-connect-1)
                      ("rust-nix" ,rust-nix-0.22)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-polling" ,rust-polling-2)
                      ("rust-scoped-tls" ,rust-scoped-tls-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-xml-rs" ,rust-serde-xml-rs-0.4)
                      ("rust-serde-repr" ,rust-serde-repr-0.1)
                      ("rust-zbus-macros" ,rust-zbus-macros-1)
                      ("rust-zvariant" ,rust-zvariant-2))))
   (home-page "https://gitlab.freedesktop.org/dbus/zbus/")
   (synopsis "API for D-Bus communication")
   (description "API for D-Bus communication")
   (license license:expat)))

(define-public rust-x11rb-protocol-0.11
  (package
   (name "rust-x11rb-protocol")
   (version "0.11.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "x11rb-protocol" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0mlwsfb4w8dic0hf0qdxix81f7w07z9v2nsdwly0f8qi2hxm3cg0"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-nix" ,rust-nix-0.25)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/psychon/x11rb")
   (synopsis "Rust bindings to X11")
   (description "Rust bindings to X11")
   (license (list license:expat license:asl2.0))))

(define-public rust-nix-0.25
  (package
   (name "rust-nix")
   (version "0.25.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "nix" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1r4vyp5g1lxzpig31bkrhxdf2bggb4nvk405x5gngzfvwxqgyipk"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-autocfg" ,rust-autocfg-1)
                      ("rust-bitflags" ,rust-bitflags-1)
                      ("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-memoffset" ,rust-memoffset-0.6)
                      ("rust-pin-utils" ,rust-pin-utils-0.1))))
   (home-page "https://github.com/nix-rust/nix")
   (synopsis "Rust friendly bindings to *nix APIs")
   (description "Rust friendly bindings to *nix APIs")
   (license license:expat)))

(define-public rust-x11rb-0.11
  (package
   (name "rust-x11rb")
   (version "0.11.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "x11rb" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "05wn86brwm1cd8xgrbs9s1fy71asav8qlsrnlzkvm4fx2aacgwyd"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-gethostname" ,rust-gethostname-0.2)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-libloading" ,rust-libloading-0.7)
                      ("rust-nix" ,rust-nix-0.25)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-winapi" ,rust-winapi-0.3)
                      ("rust-winapi-wsapoll" ,rust-winapi-wsapoll-0.1)
                      ("rust-x11rb-protocol" ,rust-x11rb-protocol-0.11))))
   (home-page "https://github.com/psychon/x11rb")
   (synopsis "Rust bindings to X11")
   (description "Rust bindings to X11")
   (license (list license:expat license:asl2.0))))

(define-public rust-unsafe-libyaml-0.2
  (package
   (name "rust-unsafe-libyaml")
   (version "0.2.5")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "unsafe-libyaml" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1lmf2a079x763qim9041r0k92d2359lc7lhsx9wbw1na8jxdhzmw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/dtolnay/unsafe-libyaml")
   (synopsis "libyaml transpiled to rust by c2rust")
   (description "libyaml transpiled to rust by c2rust")
   (license license:expat)))

(define-public rust-proc-macro2-1
  (package
   (name "rust-proc-macro2")
   (version "1.0.51")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "proc-macro2" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1mj9r146akd3ldfic70bzqr7hwxd35lr0h551yk1vlirbfp7qwjx"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-unicode-ident" ,rust-unicode-ident-1))))
   (home-page "https://github.com/dtolnay/proc-macro2")
   (synopsis
    "A substitute implementation of the compiler's `proc_macro` API to decouple token-based libraries from the procedural macro use case.")
   (description
    "This package provides a substitute implementation of the compiler's `proc_macro`
API to decouple token-based libraries from the procedural macro use case.")
   (license (list license:expat license:asl2.0))))

(define-public rust-syn-1
  (package
   (name "rust-syn")
   (version "1.0.107")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "syn" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1xg3315vx8civ8y0l5zxq5mkx07qskaqwnjak18aw0vfn6sn8h0z"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-unicode-ident" ,rust-unicode-ident-1))))
   (home-page "https://github.com/dtolnay/syn")
   (synopsis "Parser for Rust source code")
   (description "Parser for Rust source code")
   (license (list license:expat license:asl2.0))))

(define-public rust-serde-derive-1
  (package
   (name "rust-serde-derive")
   (version "1.0.152")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "serde_derive" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "07jlbk3khspawlqayr5lhzgqirv031ap4p8asw199l7ciq8psj5g"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://serde.rs")
   (synopsis "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
   (description
    "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
   (license (list license:expat license:asl2.0))))

(define-public rust-serde-1
  (package
   (name "rust-serde")
   (version "1.0.152")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "serde" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1ysykpc4a9f1yn7zikdwhyfs0bpa7mlc8vsm7sl4glr1606iyzdv"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde-derive" ,rust-serde-derive-1))))
   (home-page "https://serde.rs")
   (synopsis "A generic serialization/deserialization framework")
   (description
    "This package provides a generic serialization/deserialization framework")
   (license (list license:expat license:asl2.0))))

(define-public rust-serde-yaml-0.9
  (package
   (name "rust-serde-yaml")
   (version "0.9.17")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "serde_yaml" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0rv5vzgp3dx3jjf1v9zs9j93rv8vfb5im27sa460xvysdi5nvc4g"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-indexmap" ,rust-indexmap-1)
                      ("rust-itoa" ,rust-itoa-1)
                      ("rust-ryu" ,rust-ryu-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-unsafe-libyaml" ,rust-unsafe-libyaml-0.2))))
   (home-page "https://github.com/dtolnay/serde-yaml")
   (synopsis "YAML data format for Serde")
   (description "YAML data format for Serde")
   (license (list license:expat license:asl2.0))))

(define-public rust-time-macros-0.2
  (package
   (name "rust-time-macros")
   (version "0.2.6")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "time-macros" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1chnpb27nishwa4rn4acr2l9ha5wxqw2dikmqnay99scafgzjryr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-time-core" ,rust-time-core-0.1))))
   (home-page "https://github.com/time-rs/time")
   (synopsis
    "    Procedural macros for the time crate.
    This crate is an implementation detail and should not be relied upon directly.
")
   (description
    "Procedural macros for the time crate.  This crate is an implementation detail
and should not be relied upon directly.")
   (license (list license:expat license:asl2.0))))

(define-public rust-time-core-0.1
  (package
   (name "rust-time-core")
   (version "0.1.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "time-core" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1z803zwzyh16nk3c4nmkw8v69nyj0r4v8s3yag68mvya38gkw59f"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/time-rs/time")
   (synopsis
    "This crate is an implementation detail and should not be relied upon directly.")
   (description
    "This crate is an implementation detail and should not be relied upon directly.")
   (license (list license:expat license:asl2.0))))

(define-public rust-num-threads-0.1
  (package
   (name "rust-num-threads")
   (version "0.1.6")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "num_threads" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0i5vmffsv6g79z869flp1sja69g1gapddjagdw1k3q9f3l2cw698"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2))))
   (home-page "https://github.com/jhpratt/num_threads")
   (synopsis
    "A minimal library that determines the number of running threads for the current process.")
   (description
    "This package provides a minimal library that determines the number of running
threads for the current process.")
   (license (list license:expat license:asl2.0))))

(define-public rust-wasm-bindgen-shared-0.2
  (package
   (name "rust-wasm-bindgen-shared")
   (version "0.2.84")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "wasm-bindgen-shared" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0pcvk1c97r1pprzfaxxn359r0wqg5bm33ylbwgjh8f4cwbvzwih0"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://rustwasm.github.io/wasm-bindgen/")
   (synopsis
    "Shared support between wasm-bindgen and wasm-bindgen cli, an internal
dependency.
")
   (description
    "Shared support between wasm-bindgen and wasm-bindgen cli, an internal
dependency.")
   (license (list license:expat license:asl2.0))))

(define-public rust-wasm-bindgen-backend-0.2
  (package
   (name "rust-wasm-bindgen-backend")
   (version "0.2.84")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "wasm-bindgen-backend" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1ffc0wb293ha56i66f830x7f8aa2xql69a21lrasy1ncbgyr1klm"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bumpalo" ,rust-bumpalo-3)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1)
                      ("rust-wasm-bindgen-shared" ,rust-wasm-bindgen-shared-0.2))))
   (home-page "https://rustwasm.github.io/wasm-bindgen/")
   (synopsis "Backend code generation of the wasm-bindgen tool
")
   (description "Backend code generation of the wasm-bindgen tool")
   (license (list license:expat license:asl2.0))))

(define-public rust-wasm-bindgen-macro-support-0.2
  (package
   (name "rust-wasm-bindgen-macro-support")
   (version "0.2.84")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "wasm-bindgen-macro-support" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1xm56lpi0rihh8ny7x085dgs3jdm47spgqflb98wghyadwq83zra"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1)
                      ("rust-wasm-bindgen-backend" ,rust-wasm-bindgen-backend-0.2)
                      ("rust-wasm-bindgen-shared" ,rust-wasm-bindgen-shared-0.2))))
   (home-page "https://rustwasm.github.io/wasm-bindgen/")
   (synopsis
    "The part of the implementation of the `#[wasm_bindgen]` attribute that is not in the shared backend crate
")
   (description
    "The part of the implementation of the `#[wasm_bindgen]` attribute that is not in
the shared backend crate")
   (license (list license:expat license:asl2.0))))

(define-public rust-wasm-bindgen-macro-0.2
  (package
   (name "rust-wasm-bindgen-macro")
   (version "0.2.84")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "wasm-bindgen-macro" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1idlq28awqhq8rclb22rn5xix82w9a4rgy11vkapzhzd1dygf8ac"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-quote" ,rust-quote-1)
                      ("rust-wasm-bindgen-macro-support" ,rust-wasm-bindgen-macro-support-0.2))))
   (home-page "https://rustwasm.github.io/wasm-bindgen/")
   (synopsis
    "Definition of the `#[wasm_bindgen]` attribute, an internal dependency
")
   (description
    "Definition of the `#[wasm_bindgen]` attribute, an internal dependency")
   (license (list license:expat license:asl2.0))))

(define-public rust-wasm-bindgen-0.2
  (package
   (name "rust-wasm-bindgen")
   (version "0.2.84")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "wasm-bindgen" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0fx5gh0b4n6znfa3blz92wn1k4bbiysyq9m95s7rn3gk46ydry1i"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-wasm-bindgen-macro" ,rust-wasm-bindgen-macro-0.2))))
   (home-page "https://rustwasm.github.io/")
   (synopsis "Easy support for interacting between JS and Rust.
")
   (description "Easy support for interacting between JS and Rust.")
   (license (list license:expat license:asl2.0))))

(define-public rust-js-sys-0.3
  (package
   (name "rust-js-sys")
   (version "0.3.61")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "js-sys" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0c075apyc5fxp2sbgr87qcvq53pcjxmp05l47lzlhpn5a0hxwpa4"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2))))
   (home-page "https://rustwasm.github.io/wasm-bindgen/")
   (synopsis
    "Bindings for all JS global objects and functions in all JS environments like
Node.js and browsers, built on `#[wasm_bindgen]` using the `wasm-bindgen` crate.
")
   (description
    "Bindings for all JS global objects and functions in all JS environments like
Node.js and browsers, built on `#[wasm_bindgen]` using the `wasm-bindgen` crate.")
   (license (list license:expat license:asl2.0))))

(define-public rust-time-0.3
  (package
   (name "rust-time")
   (version "0.3.17")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "time" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0xl3lg062kzfs2byg8aigx98wygd767rhjs3lsy37ggf2x3byqd5"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-itoa" ,rust-itoa-1)
                      ("rust-js-sys" ,rust-js-sys-0.3)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-num-threads" ,rust-num-threads-0.1)
                      ("rust-quickcheck" ,rust-quickcheck-1)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-time-core" ,rust-time-core-0.1)
                      ("rust-time-macros" ,rust-time-macros-0.2))))
   (home-page "https://github.com/time-rs/time")
   (synopsis "Utilities for working with time-related functions in Rust.
")
   (description "Utilities for working with time-related functions in Rust.")
   (license (list license:expat license:asl2.0))))

(define-public rust-serde-with-macros-2
  (package
   (name "rust-serde-with-macros")
   (version "2.2.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "serde_with_macros" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0pikbhf7fk5c5fa5c2nf67ny7l8mahpk2dy5jxb0jpy0yc4n15m1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-darling" ,rust-darling-0.14)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/jonasbb/serde_with/")
   (synopsis "proc-macro library for serde_with")
   (description "proc-macro library for serde_with")
   (license (list license:expat license:asl2.0))))

(define-public rust-rustc-rayon-core-0.4
  (package
   (name "rust-rustc-rayon-core")
   (version "0.4.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "rustc-rayon-core" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0c4cf58056ya3282c24bnyq39cwm1rd1m96lymfbb6yvl12929h2"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
                      ("rust-crossbeam-deque" ,rust-crossbeam-deque-0.8)
                      ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
                      ("rust-num-cpus" ,rust-num-cpus-1))))
   (home-page "https://github.com/rust-lang/rustc-rayon")
   (synopsis "Core APIs for Rayon - fork for rustc")
   (description "Core APIs for Rayon - fork for rustc")
   (license (list license:expat license:asl2.0))))

(define-public rust-crossbeam-deque-0.8
  (package
   (name "rust-crossbeam-deque")
   (version "0.8.2")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "crossbeam-deque" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1z6ifz35lyk0mw818xcl3brgss2k8islhgdmfk9s5fwjnr982pki"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-crossbeam-epoch" ,rust-crossbeam-epoch-0.9)
                      ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8))))
   (home-page
    "https://github.com/crossbeam-rs/crossbeam/tree/master/crossbeam-deque")
   (synopsis "Concurrent work-stealing deque")
   (description "Concurrent work-stealing deque")
   (license (list license:expat license:asl2.0))))

(define-public rust-rustc-rayon-0.4
  (package
   (name "rust-rustc-rayon")
   (version "0.4.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "rustc-rayon" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0ykjr1i56jmi8ykkcr7x555wnxki1vsi703mz6n2x7k0naqg0y8s"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-autocfg" ,rust-autocfg-1)
                      ("rust-crossbeam-deque" ,rust-crossbeam-deque-0.8)
                      ("rust-either" ,rust-either-1)
                      ("rust-rustc-rayon-core" ,rust-rustc-rayon-core-0.4))))
   (home-page "https://github.com/rust-lang/rustc-rayon")
   (synopsis "Simple work-stealing parallelism for Rust - fork for rustc")
   (description "Simple work-stealing parallelism for Rust - fork for rustc")
   (license (list license:expat license:asl2.0))))

(define-public rust-indexmap-1
  (package
   (name "rust-indexmap")
   (version "1.9.2")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "indexmap" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "16dkr2h5p379jcr8rnb420396yvzid2myirc2w70zcf43yffg18q"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                      ("rust-autocfg" ,rust-autocfg-1)
                      ("rust-hashbrown" ,rust-hashbrown-0.12)
                      ("rust-quickcheck" ,rust-quickcheck-1)
                      ("rust-rayon" ,rust-rayon-1)
                      ("rust-rustc-rayon" ,rust-rustc-rayon-0.4)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/bluss/indexmap")
   (synopsis "A hash table with consistent order and fast iteration.")
   (description
    "This package provides a hash table with consistent order and fast iteration.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-doc-comment-0.3
  (package
   (name "rust-doc-comment")
   (version "0.3.3")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "doc-comment" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "043sprsf3wl926zmck1bm7gw0jq50mb76lkpk49vasfr6ax1p97y"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/GuillaumeGomez/doc-comment")
   (synopsis "Macro to generate doc comments")
   (description "Macro to generate doc comments")
   (license license:expat)))

(define-public rust-tinyvec-1
  (package
   (name "rust-tinyvec")
   (version "1.6.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "tinyvec" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0l6bl2h62a5m44jdnpn7lmj14rd44via8180i7121fvm73mmrk47"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-tinyvec-macros" ,rust-tinyvec-macros-0.1))))
   (home-page "https://github.com/Lokathor/tinyvec")
   (synopsis "`tinyvec` provides 100% safe vec-like data structures.")
   (description "`tinyvec` provides 100% safe vec-like data structures.")
   (license (list license:zlib license:asl2.0 license:expat))))

(define-public rust-rkyv-derive-0.7
  (package
   (name "rust-rkyv-derive")
   (version "0.7.39")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "rkyv_derive" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1i1lmir3lm8zj8k1an7j2rchv1admqhysh6r6bfkcgmmi3fdmbkf"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/rkyv/rkyv")
   (synopsis "Derive macro for rkyv")
   (description "Derive macro for rkyv")
   (license license:expat)))

(define-public rust-rend-0.3
  (package
   (name "rust-rend")
   (version "0.3.6")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "rend" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "15fz3rw8c74586kxl6dcdn4s864ph884wfpg9shgnbrnnss69bvr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytecheck" ,rust-bytecheck-0.6))))
   (home-page "https://github.com/djkoloski/rend")
   (synopsis "Endian-aware primitives for Rust")
   (description "Endian-aware primitives for Rust")
   (license license:expat)))

(define-public rust-uuid-macro-internal-1
  (package
   (name "rust-uuid-macro-internal")
   (version "1.3.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "uuid-macro-internal" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1jbccm5pk216zrrf0ibd1j7m86lgmsyibs8d59ykhak5g2l01cy1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "")
   (synopsis "Private implementation details of the uuid! macro.")
   (description "Private implementation details of the uuid! macro.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-derive-arbitrary-1
  (package
   (name "rust-derive-arbitrary")
   (version "1.2.3")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "derive_arbitrary" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "005x40g2k89g31lx4dzi4biw76s42b5cvpmvk209w8if3rqf9vlb"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/rust-fuzz/arbitrary")
   (synopsis "Derives arbitrary traits")
   (description "Derives arbitrary traits")
   (license (list license:expat license:asl2.0))))

(define-public rust-arbitrary-1
  (package
   (name "rust-arbitrary")
   (version "1.2.3")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "arbitrary" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1bdd7s3jvj02mkhy5pcfymab47jhi3zxl29dxy9v59sswr6sz41y"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-derive-arbitrary" ,rust-derive-arbitrary-1))))
   (home-page "https://github.com/rust-fuzz/arbitrary/")
   (synopsis
    "The trait for generating structured data from unstructured data")
   (description
    "The trait for generating structured data from unstructured data")
   (license (list license:expat license:asl2.0))))

(define-public rust-uuid-1
  (package
   (name "rust-uuid")
   (version "1.3.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "uuid" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0ygxkj6bgfjkbhpdj1s0607zi9l8886pcw04lryd647f4r9q8x0n"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                      ("rust-atomic" ,rust-atomic-0.5)
                      ("rust-getrandom" ,rust-getrandom-0.2)
                      ("rust-md-5" ,rust-md-5-0.10)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-sha1-smol" ,rust-sha1-smol-1)
                      ("rust-slog" ,rust-slog-2)
                      ("rust-uuid-macro-internal" ,rust-uuid-macro-internal-1)
                      ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                      ("rust-zerocopy" ,rust-zerocopy-0.6))))
   (home-page "https://github.com/uuid-rs/uuid")
   (synopsis "A library to generate and parse UUIDs.")
   (description
    "This package provides a library to generate and parse UUIDs.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-bytecheck-derive-0.6
  (package
   (name "rust-bytecheck-derive")
   (version "0.6.9")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "bytecheck_derive" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1gxr63mi91rrjzfzcb8pfwsnarp9i2w1n168nc05aq4fx7mpdr8k"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/djkoloski/bytecheck")
   (synopsis "Derive macro for bytecheck")
   (description "Derive macro for bytecheck")
   (license license:expat)))

(define-public rust-bytecheck-0.6
  (package
   (name "rust-bytecheck")
   (version "0.6.9")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "bytecheck" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0vs0a8p3bpaz3vc15zknqkd5ajgzgswf2bmd1mbwdbdm28naq76i"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytecheck-derive" ,rust-bytecheck-derive-0.6)
                      ("rust-ptr-meta" ,rust-ptr-meta-0.1)
                      ("rust-simdutf8" ,rust-simdutf8-0.1)
                      ("rust-uuid" ,rust-uuid-1))))
   (home-page "https://github.com/djkoloski/bytecheck")
   (synopsis "Derive macro for bytecheck")
   (description "Derive macro for bytecheck")
   (license license:expat)))

(define-public rust-rkyv-0.7
  (package
   (name "rust-rkyv")
   (version "0.7.39")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "rkyv" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "05gdspzw03hq6l58si4ixfj5xd27ljw6fiqksggnvn87bd4b7hnf"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytecheck" ,rust-bytecheck-0.6)
                      ("rust-hashbrown" ,rust-hashbrown-0.12)
                      ("rust-indexmap" ,rust-indexmap-1)
                      ("rust-ptr-meta" ,rust-ptr-meta-0.1)
                      ("rust-rend" ,rust-rend-0.3)
                      ("rust-rkyv-derive" ,rust-rkyv-derive-0.7)
                      ("rust-seahash" ,rust-seahash-4)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-tinyvec" ,rust-tinyvec-1)
                      ("rust-uuid" ,rust-uuid-1))))
   (home-page "https://github.com/rkyv/rkyv")
   (synopsis "Zero-copy deserialization framework for Rust")
   (description "Zero-copy deserialization framework for Rust")
   (license license:expat)))

(define-public rust-iana-time-zone-haiku-0.1
  (package
   (name "rust-iana-time-zone-haiku")
   (version "0.1.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "iana-time-zone-haiku" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1jix9qrqxclj9r4wkg7d3fr987d77vdg3qy2c5hl4ry19wlaw0q7"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cxx" ,rust-cxx-1)
                      ("rust-cxx-build" ,rust-cxx-build-1))))
   (home-page "https://github.com/strawlab/iana-time-zone")
   (synopsis "iana-time-zone support crate for Haiku OS")
   (description "iana-time-zone support crate for Haiku OS")
   (license (list license:expat license:asl2.0))))

(define-public rust-core-foundation-sys-0.8
  (package
   (name "rust-core-foundation-sys")
   (version "0.8.3")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "core-foundation-sys" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1p5r2wckarkpkyc4z83q08dwpvcafrb1h6fxfa3qnikh8szww9sq"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/servo/core-foundation-rs")
   (synopsis "Bindings to Core Foundation for macOS")
   (description "Bindings to Core Foundation for macOS")
   (license (list license:expat license:asl2.0))))

(define-public rust-android-system-properties-0.1
  (package
   (name "rust-android-system-properties")
   (version "0.1.5")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "android_system_properties" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "04b3wrz12837j7mdczqd95b732gw5q7q66cv4yn4646lvccp57l1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2))))
   (home-page "https://github.com/nical/android_system_properties")
   (synopsis "Minimal Android system properties wrapper")
   (description "Minimal Android system properties wrapper")
   (license (list license:expat license:asl2.0))))

(define-public rust-iana-time-zone-0.1
  (package
   (name "rust-iana-time-zone")
   (version "0.1.53")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "iana-time-zone" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0ra7nvai8n3alvljswacjbnhfcpivpi7xqbc5n048w18gdk25hb4"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-android-system-properties" ,rust-android-system-properties-0.1)
                      ("rust-core-foundation-sys" ,rust-core-foundation-sys-0.8)
                      ("rust-iana-time-zone-haiku" ,rust-iana-time-zone-haiku-0.1)
                      ("rust-js-sys" ,rust-js-sys-0.3)
                      ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                      ("rust-winapi" ,rust-winapi-0.3))))
   (home-page "https://github.com/strawlab/iana-time-zone")
   (synopsis "get the IANA time zone for the current system")
   (description "get the IANA time zone for the current system")
   (license (list license:expat license:asl2.0))))

(define-public rust-criterion-plot-0.5
  (package
   (name "rust-criterion-plot")
   (version "0.5.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "criterion-plot" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1c866xkjqqhzg4cjvg01f8w6xc1j3j7s58rdksl52skq89iq4l3b"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cast" ,rust-cast-0.3)
                      ("rust-itertools" ,rust-itertools-0.10))))
   (home-page "https://github.com/bheisler/criterion.rs")
   (synopsis "Criterion's plotting library")
   (description "Criterion's plotting library")
   (license (list license:expat license:asl2.0))))

(define-public rust-ciborium-ll-0.2
  (package
   (name "rust-ciborium-ll")
   (version "0.2.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "ciborium-ll" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "06ygqh33k3hp9r9mma43gf189b6cyq62clk65f4w1q54nni30c11"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-ciborium-io" ,rust-ciborium-io-0.2)
                      ("rust-half" ,rust-half-1))))
   (home-page "https://github.com/enarx/ciborium")
   (synopsis "Low-level CBOR codec primitives")
   (description "Low-level CBOR codec primitives")
   (license license:asl2.0)))

(define-public rust-ciborium-io-0.2
  (package
   (name "rust-ciborium-io")
   (version "0.2.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "ciborium-io" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0sdkk7l7pqi2nsbm9c6g8im1gb1qdd83l25ja9xwhg07mx9yfv9l"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/enarx/ciborium")
   (synopsis "Simplified Read/Write traits for no_std usage")
   (description "Simplified Read/Write traits for no_std usage")
   (license license:asl2.0)))

(define-public rust-ciborium-0.2
  (package
   (name "rust-ciborium")
   (version "0.2.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "ciborium" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "13vqkm88kaq8nvxhaj6qsl0gsc16rqsin014fx5902y6iib3ghdh"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-ciborium-io" ,rust-ciborium-io-0.2)
                      ("rust-ciborium-ll" ,rust-ciborium-ll-0.2)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/enarx/ciborium")
   (synopsis "serde implementation of CBOR using ciborium-basic")
   (description "serde implementation of CBOR using ciborium-basic")
   (license license:asl2.0)))

(define-public rust-anes-0.1
  (package
   (name "rust-anes")
   (version "0.1.6")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "anes" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "16bj1ww1xkwzbckk32j2pnbn5vk6wgsl3q4p3j9551xbcarwnijb"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1))))
   (home-page "https://github.com/zrzka/anes-rs")
   (synopsis "ANSI Escape Sequences provider & parser")
   (description "ANSI Escape Sequences provider & parser")
   (license (list license:expat license:asl2.0))))

(define-public rust-criterion-0.4
  (package
   (name "rust-criterion")
   (version "0.4.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "criterion" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1jsl4r0yc3fpkyjbi8aa1jrm69apqq9rxwnjnd9brqmaq44nxiz7"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anes" ,rust-anes-0.1)
                      ("rust-async-std" ,rust-async-std-1)
                      ("rust-atty" ,rust-atty-0.2)
                      ("rust-cast" ,rust-cast-0.3)
                      ("rust-ciborium" ,rust-ciborium-0.2)
                      ("rust-clap" ,rust-clap-3)
                      ("rust-criterion-plot" ,rust-criterion-plot-0.5)
                      ("rust-csv" ,rust-csv-1)
                      ("rust-futures" ,rust-futures-0.3)
                      ("rust-itertools" ,rust-itertools-0.10)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-num-traits" ,rust-num-traits-0.2)
                      ("rust-oorandom" ,rust-oorandom-11.1)
                      ("rust-plotters" ,rust-plotters-0.3)
                      ("rust-rayon" ,rust-rayon-1)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-derive" ,rust-serde-derive-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-smol" ,rust-smol-1)
                      ("rust-tinytemplate" ,rust-tinytemplate-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-walkdir" ,rust-walkdir-2))))
   (home-page "https://bheisler.github.io/criterion.rs/book/index.html")
   (synopsis "Statistics-driven micro-benchmarking library")
   (description "Statistics-driven micro-benchmarking library")
   (license (list license:asl2.0 license:expat))))

(define-public rust-chrono-0.4
  (package
   (name "rust-chrono")
   (version "0.4.23")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "chrono" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "07s1hnrw8zpmgf76fj5sx0dzxny5p1xs703p0li4n8h1xpcs7c0n"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                      ("rust-criterion" ,rust-criterion-0.4)
                      ("rust-iana-time-zone" ,rust-iana-time-zone-0.1)
                      ("rust-js-sys" ,rust-js-sys-0.3)
                      ("rust-num-integer" ,rust-num-integer-0.1)
                      ("rust-num-traits" ,rust-num-traits-0.2)
                      ("rust-pure-rust-locales" ,rust-pure-rust-locales-0.5)
                      ("rust-rkyv" ,rust-rkyv-0.7)
                      ("rust-rustc-serialize" ,rust-rustc-serialize-0.3)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-time" ,rust-time-0.1)
                      ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                      ("rust-winapi" ,rust-winapi-0.3))))
   (home-page "https://github.com/chronotope/chrono")
   (synopsis "Date and time library for Rust")
   (description "Date and time library for Rust")
   (license (list license:expat license:asl2.0))))

(define-public rust-serde-with-2
  (package
   (name "rust-serde-with")
   (version "2.2.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "serde_with" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "174075pyhd9wkk5xm1xn5lav7129rbv3lgf9yhd3ipj6j4bh9n9h"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-base64" ,rust-base64-0.13)
                      ("rust-chrono" ,rust-chrono-0.4)
                      ("rust-doc-comment" ,rust-doc-comment-0.3)
                      ("rust-hex" ,rust-hex-0.4)
                      ("rust-indexmap" ,rust-indexmap-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-serde-with-macros" ,rust-serde-with-macros-2)
                      ("rust-time" ,rust-time-0.3))))
   (home-page "https://github.com/jonasbb/serde_with")
   (synopsis "Custom de/serialization functions for Rust's serde")
   (description "Custom de/serialization functions for Rust's serde")
   (license (list license:expat license:asl2.0))))

(define-public rust-hyprland-0.2
  (package
   (name "rust-hyprland")
   (version "0.2.4")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "hyprland" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0bnbs297na9a7lfh76mg5armdzbk1rjx05ms2pll2dh4n25dsqgz"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-hex" ,rust-hex-0.4)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-serde-repr" ,rust-serde-repr-0.1)
                      ("rust-tokio" ,rust-tokio-1))))
   (home-page "https://github.com/hyprland-community/hyprland-rs")
   (synopsis "A unoffical rust wrapper for hyprland's IPC")
   (description
    "This package provides a unoffical rust wrapper for hyprland's IPC")
   (license license:gpl3+)))

(define-public rust-fork-0.1
  (package
   (name "rust-fork")
   (version "0.1.20")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "fork" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1jhd3yma7kbghn42vgc7cd2qgiq54g8zgls3ixp8vgzl184wx24p"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2))))
   (home-page "https://docs.rs/fork/latest/fork/")
   (synopsis
    "Library for creating a new process detached from the controlling terminal (daemon)")
   (description
    "Library for creating a new process detached from the controlling terminal
(daemon)")
   (license license:expat)))

(define-public rust-wyz-0.5
  (package
   (name "rust-wyz")
   (version "0.5.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "wyz" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1vdrfy7i2bznnzjdl9vvrzljvs4s3qm8bnlgqwln6a941gy61wq5"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-once-cell" ,rust-once-cell-1)
                      ("rust-tap" ,rust-tap-1)
                      ("rust-typemap" ,rust-typemap-0.3))))
   (home-page "https://myrrlyn.net/crates/wyz")
   (synopsis "myrrlynâs utility collection")
   (description "myrrlynâs utility collection")
   (license license:expat)))

(define-public rust-radium-0.7
  (package
   (name "rust-radium")
   (version "0.7.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "radium" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "02cxfi3ky3c4yhyqx9axqwhyaca804ws46nn4gc1imbk94nzycyw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://ferrilab.github.io/ferrilab")
   (synopsis "Portable interfaces for maybe-atomic types")
   (description "Portable interfaces for maybe-atomic types")
   (license license:expat)))

(define-public rust-funty-2
  (package
   (name "rust-funty")
   (version "2.0.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "funty" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "177w048bm0046qlzvp33ag3ghqkqw4ncpzcm5lq36gxf2lla7mg6"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://ferrilab.github.io/ferrilab")
   (synopsis "Trait generalization over the primitive types")
   (description "Trait generalization over the primitive types")
   (license license:expat)))

(define-public rust-bitvec-1
  (package
   (name "rust-bitvec")
   (version "1.0.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "bitvec" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "173ydyj2q5vwj88k6xgjnfsshs4x9wbvjjv7sm0h36r34hn87hhv"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-funty" ,rust-funty-2)
                      ("rust-radium" ,rust-radium-0.7)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-tap" ,rust-tap-1)
                      ("rust-wyz" ,rust-wyz-0.5))))
   (home-page "https://bitvecto-rs.github.io/bitvec")
   (synopsis "Addresses memory by bits, for packed collections and bitfields")
   (description
    "Addresses memory by bits, for packed collections and bitfields")
   (license license:expat)))

(define-public rust-evdev-0.12
  (package
   (name "rust-evdev")
   (version "0.12.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "evdev" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1ww35bkqf060nl6x2vfg0frd6ql470c90l2ah68b3mngr3y5kv9b"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitvec" ,rust-bitvec-1)
                      ("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-futures-core" ,rust-futures-core-0.3)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-nix" ,rust-nix-0.23)
                      ("rust-paste" ,rust-paste-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-tokio" ,rust-tokio-1))))
   (home-page "https://github.com/cmr/evdev")
   (synopsis "evdev interface for Linux")
   (description "evdev interface for Linux")
   (license (list license:asl2.0 license:expat))))

(define-public rust-env-logger-0.9
  (package
   (name "rust-env-logger")
   (version "0.9.3")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "env_logger" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1rq0kqpa8my6i1qcyhfqrn1g9xr5fbkwwbd42nqvlzn9qibncbm1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-atty" ,rust-atty-0.2)
                      ("rust-humantime" ,rust-humantime-2)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-termcolor" ,rust-termcolor-1))))
   (home-page "https://github.com/rust-cli/env_logger/")
   (synopsis
    "A logging implementation for `log` which is configured via an environment
variable.
")
   (description
    "This package provides a logging implementation for `log` which is configured via
an environment variable.")
   (license (list license:expat license:asl2.0))))

(define-public rust-derive-where-1
  (package
   (name "rust-derive-where")
   (version "1.1.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "derive-where" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0f911kfqgy8jhw90m5jyqw0k91c76y0dkv3v3qzz7vd9jn9a4xl6"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/ModProg/derive-where")
   (synopsis "Deriving with custom trait bounds")
   (description "Deriving with custom trait bounds")
   (license (list license:expat license:asl2.0))))

(define-public rust-anyhow-1
  (package
   (name "rust-anyhow")
   (version "1.0.69")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "anyhow" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "007q0cw3zv8y5314c41vjyqznrqvim5ydv0306wy9mn34zbznji2"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-backtrace" ,rust-backtrace-0.3))))
   (home-page "https://github.com/dtolnay/anyhow")
   (synopsis "Flexible concrete Error type built on std::error::Error")
   (description "Flexible concrete Error type built on std::error::Error")
   (license (list license:expat license:asl2.0))))

(define-public rust-interception-0.1
  (package
   (name "rust-interception")
   (version "0.1.2")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "interception" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1cqp5g83l7m76gjr3csnds9nsf8024m8jyw0x73g7p3gihhxrd3n"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-bitflags" ,rust-bitflags-1)
                      ("rust-interception-sys" ,rust-interception-sys-0.1)
                      ("rust-num-enum" ,rust-num-enum-0.5)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/bozbez/interception-rs")
   (synopsis "Safe wrapper for Interception")
   (description "Safe wrapper for Interception")
   (license (list license:expat license:asl2.0))))

(define-public rust-native-windows-gui-1
  (package
   (name "rust-native-windows-gui")
   (version "1.0.13")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "native-windows-gui" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0m44lbslzvs04i4rgcphld23qlwf9zzlzmspgimyp3gnd6k06w2g"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-bitflags" ,rust-bitflags-1)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-muldiv" ,rust-muldiv-0.2)
                      ("rust-newline-converter" ,rust-newline-converter-0.2)
                      ("rust-plotters" ,rust-plotters-0.3)
                      ("rust-plotters-backend" ,rust-plotters-backend-0.3)
                      ("rust-raw-window-handle" ,rust-raw-window-handle-0.3)
                      ("rust-stretch" ,rust-stretch-0.3)
                      ("rust-winapi" ,rust-winapi-0.3)
                      ("rust-winapi-build" ,rust-winapi-build-0.1))))
   (home-page "https://github.com/gabdube/native-windows-gui")
   (synopsis
    "A rust library to develop native GUI applications on the desktop for Microsoft Windows. Native-windows-gui wraps the native win32 window controls in a rustic API")
   (description
    "This package provides a rust library to develop native GUI applications on the
desktop for Microsoft Windows.  Native-windows-gui wraps the native win32 window
controls in a rustic API")
   (license license:expat)))

(define-public rust-simplelog-0.12
  (package
   (name "rust-simplelog")
   (version "0.12.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "simplelog" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "11m7f2djih4413fdjk9lkkhwxq7lsqf86z00bd4xsx6ym82gzps8"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-ansi-term" ,rust-ansi-term-0.12)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-paris" ,rust-paris-1)
                      ("rust-termcolor" ,rust-termcolor-1)
                      ("rust-time" ,rust-time-0.3))))
   (home-page "https://github.com/drakulix/simplelog.rs")
   (synopsis "A simple and easy-to-use logging facility for Rust's log crate")
   (description
    "This package provides a simple and easy-to-use logging facility for Rust's log
crate")
   (license (list license:expat license:asl2.0))))

(define-public rust-interception-sys-0.1
  (package
   (name "rust-interception-sys")
   (version "0.1.3")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "interception-sys" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1lgwbml7gzq5a5rriy708w68gx6yiw9cdg7xy2c5vsrrck7pbs5b"))))
   (build-system cargo-build-system)
   (home-page "https://github.com/bozbez/interception-sys")
   (synopsis "FFI bindings for Interception")
   (description "FFI bindings for Interception")
   (license license:lgpl3)))

(define-public rust-arraydeque-0.5
  (package
   (name "rust-arraydeque")
   (version "0.5.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "arraydeque" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0dn2xdfg3rkiqsh8a6achnmvf5nf11xk33xgjzpksliab4yjx43x"))))
   (build-system cargo-build-system)
   (home-page "https://github.com/andylokandy/arraydeque")
   (synopsis
    "A ring buffer with a fixed capacity, which can be stored on the stack.")
   (description
    "This package provides a ring buffer with a fixed capacity, which can be stored
on the stack.")
   (license (list license:expat license:asl2.0))))

(define-public rust-arraydeque-0.4
  (package
   (name "rust-arraydeque")
   (version "0.4.5")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "arraydeque" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1n4appvjfrmxkc4x0v8ivpzwqf1z6pqx2caxk98116fqkgbd7zzh"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-generic-array" ,rust-generic-array-0.12))))
   (home-page "https://github.com/andylokandy/arraydeque")
   (synopsis
    "A ring buffer with a fixed capacity, which can be stored on the stack.")
   (description
    "This package provides a ring buffer with a fixed capacity, which can be stored
on the stack.")
   (license (list license:expat license:asl2.0))))

(define-public rust-usb-device-0.2
  (package
   (name "rust-usb-device")
   (version "0.2.9")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "usb-device" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0205a850jhw9gb96scwfx1k4iwpjvighvz3m80mjkda9r2nw6v0z"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-defmt" ,rust-defmt-0.3))
      #:cargo-development-inputs (("rust-rand" ,rust-rand-0.8)
                                  ("rust-rusb" ,rust-rusb-0.9))))
   (home-page "https://github.com/mvirkkunen/usb-device")
   (synopsis "Experimental device-side USB stack for embedded devices.")
   (description "Experimental device-side USB stack for embedded devices.")
   (license license:expat)))

(define-public rust-muldiv-1
  (package
   (name "rust-muldiv")
   (version "1.0.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "muldiv" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1c6ljsp41n8ijsx7zicwfm135drgyhcms12668ivvsbm1r98frwm"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-development-inputs (("rust-quickcheck" ,rust-quickcheck-1))))
   (home-page "https://github.com/sdroege/rust-muldiv")
   (synopsis
    "Provides a trait for numeric types to perform combined multiplication and
division with overflow protection
")
   (description
    "This package provides a trait for numeric types to perform combined
multiplication and division with overflow protection")
   (license license:expat)))

(define-public rust-muldiv-0.2
  (package
   (name "rust-muldiv")
   (version "0.2.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "muldiv" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "014jlry2l2ph56mp8knw65637hh49q7fmrraim2bx9vz0a638684"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-development-inputs (("rust-quickcheck" ,rust-quickcheck-0.9))))
   (home-page "https://github.com/sdroege/rust-muldiv")
   (synopsis
    "Provides a trait for numeric types to perform combined multiplication and
division with overflow protection
")
   (description
    "This package provides a trait for numeric types to perform combined
multiplication and division with overflow protection")
   (license license:expat)))

(define-public rust-newline-converter-0.2
  (package
   (name "rust-newline-converter")
   (version "0.2.2")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "newline-converter" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "03y000bbxnwzb7aipxyw7gm68b1bd8dv7illz03l4qw7bjfx0w8z"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-unicode-segmentation" ,rust-unicode-segmentation-1))
      #:cargo-development-inputs (("rust-criterion" ,rust-criterion-0.3)
                                  ("rust-fancy-regex" ,rust-fancy-regex-0.10)
                                  ("rust-lazy-regex" ,rust-lazy-regex-2)
                                  ("rust-once-cell" ,rust-once-cell-1))))
   (home-page
    "https://github.com/spitfire05/rnc/tree/master/crates/newline-converter")
   (synopsis "Newline byte converter library")
   (description "Newline byte converter library")
   (license license:expat)))

(define-public rust-raw-window-handle-0.3
  (package
   (name "rust-raw-window-handle")
   (version "0.3.4")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "raw-window-handle" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0xisj116xpaz1i2hci9jqfnccyixba1xryxl1gbdlj057la5b3z2"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                      ("rust-raw-window-handle" ,rust-raw-window-handle-0.4))))
   (home-page "https://github.com/rust-windowing/raw-window-handle")
   (synopsis "Interoperability library for Rust Windowing applications.")
   (description "Interoperability library for Rust Windowing applications.")
   (license license:expat)))

(define-public rust-stretch-0.3
  (package
   (name "rust-stretch")
   (version "0.3.2")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "stretch" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "11vdmli145j6yakgr7hkzgbnz1kqsb9rq3zrxl1g6dz11k9cc3bv"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-libm" ,rust-libm-0.1))
      #:cargo-development-inputs (("rust-criterion" ,rust-criterion-0.2))))
   (home-page "https://github.com/vislyhq/stretch")
   (synopsis "High performance & cross-platform Flexbox implementation")
   (description "High performance & cross-platform Flexbox implementation")
   (license license:expat)))

(define-public rust-ansi-term-0.12
  (package
   (name "rust-ansi-term")
   (version "0.12.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "ansi-term" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1ljmkbilxgmhavxvxqa7qvm6f3fjggi7q2l3a72q9x0cxjvrnanm"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-serde" ,rust-serde-1)
                      ("rust-winapi" ,rust-winapi-0.3))
      #:cargo-development-inputs (("rust-doc-comment" ,rust-doc-comment-0.3)
                                  ("rust-regex" ,rust-regex-1)
                                  ("rust-serde-json" ,rust-serde-json-1))))
   (home-page "https://github.com/ogham/rust-ansi-term")
   (synopsis "Library for ANSI terminal colours and styles (bold, underline)")
   (description
    "Library for ANSI terminal colours and styles (bold, underline)")
   (license license:expat)))

(define-public rust-rusb-0.9
  (package
   (name "rust-rusb")
   (version "0.9.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "rusb" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1q6fypmxh79nh49qd1k4lizcz3gwd0pb2djizcs9nn0wq8ss0fkh"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                      ("rust-libusb1-sys" ,rust-libusb1-sys-0.6))
      #:cargo-development-inputs (("rust-regex" ,rust-regex-1))))
   (home-page "https://github.com/a1ien/rusb")
   (synopsis "Rust library for accessing USB devices.")
   (description "Rust library for accessing USB devices.")
   (license license:expat)))

(define-public rust-raw-window-handle-0.4
  (package
   (name "rust-raw-window-handle")
   (version "0.4.3")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "raw-window-handle" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0hgvrqbr2b62zhq4ryv08h92mwis9v8f7j9pwcgxzlp7nswvw05q"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-cty" ,rust-cty-0.2))))
   (home-page "https://github.com/rust-windowing/raw-window-handle")
   (synopsis "Interoperability library for Rust Windowing applications.")
   (description "Interoperability library for Rust Windowing applications.")
   (license (list license:expat license:asl2.0 license:zlib))))

(define-public rust-fancy-regex-0.10
  (package
   (name "rust-fancy-regex")
   (version "0.10.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "fancy-regex" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0rn7wfihsk877h3kwzzm99ykflfkhg039l4synm9algs8qnsny06"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-bit-set" ,rust-bit-set-0.5)
                      ("rust-regex" ,rust-regex-1))
      #:cargo-development-inputs (("rust-bitflags" ,rust-bitflags-1)
                                  ("rust-criterion" ,rust-criterion-0.3)
                                  ("rust-half" ,rust-half-1)
                                  ("rust-matches" ,rust-matches-0.1)
                                  ("rust-quickcheck" ,rust-quickcheck-1))))
   (home-page "https://github.com/fancy-regex/fancy-regex")
   (synopsis
    "An implementation of regexes, supporting a relatively rich set of features, including backreferences and look-around.")
   (description
    "An implementation of regexes, supporting a relatively rich set of features,
including backreferences and look-around.")
   (license license:expat)))

(define-public rust-lazy-regex-2
  (package
   (name "rust-lazy-regex")
   (version "2.4.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "lazy-regex" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "14v7ayd3vpr8jp924z9ynh0f31gjy2ajf9ax8amqgzdyi4pxl1d5"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-lazy-regex-proc-macros" ,rust-lazy-regex-proc-macros-2)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-regex" ,rust-regex-1))))
   (home-page "https://github.com/Canop/lazy-regex")
   (synopsis "lazy static regular expressions checked at compile time")
   (description "lazy static regular expressions checked at compile time")
   (license license:expat)))

(define-public rust-bitflags-1
  (package
   (name "rust-bitflags")
   (version "1.3.2")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "bitflags" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "12ki6w8gn1ldq7yz9y680llwk5gmrhrzszaa17g1sbrw2r2qvwxy"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                      ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))
      #:cargo-development-inputs (("rust-rustversion" ,rust-rustversion-1)
                                  ("rust-serde" ,rust-serde-1)
                                  ("rust-serde-derive" ,rust-serde-derive-1)
                                  ("rust-serde-json" ,rust-serde-json-1)
                                  ("rust-trybuild" ,rust-trybuild-1)
                                  ("rust-walkdir" ,rust-walkdir-2))))
   (home-page "https://github.com/bitflags/bitflags")
   (synopsis "A macro to generate structures which behave like bitflags.
")
   (description
    "This package provides a macro to generate structures which behave like bitflags.")
   (license (list license:expat license:asl2.0))))

(define-public rust-inotify-0.10
  (package
    (name "rust-inotify")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "inotify" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
		"1yfkp6k5yn1lyy2qbsnikaix22zikygdqj69nabh2aawazwqiy5b"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bitflags" ,rust-bitflags-1)
                       ("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-inotify-sys" ,rust-inotify-sys-0.1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-tokio" ,rust-tokio-1))
       #:cargo-development-inputs (("rust-futures-util" ,rust-futures-util-0.3)
                                   ("rust-tempfile" ,rust-tempfile-3)
                                   ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://github.com/hannobraun/inotify")
    (synopsis "Idiomatic wrapper for inotify")
    (description "Idiomatic wrapper for inotify")
    (license license:isc)))

(define-public rust-serial-test-0.7
  (package
    (name "rust-serial-test")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "serial-test" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1x69v41r2d3l1dby8ppr9vxb1xamjpml5w42zvdwwix1k6wvz7fi"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-document-features" ,rust-document-features-0.2)
                       ("rust-fslock" ,rust-fslock-0.2)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-serial-test-derive" ,rust-serial-test-derive-0.7))
       #:cargo-development-inputs (("rust-itertools" ,rust-itertools-0.10))))
    (home-page "https://github.com/palfrey/serial_test/")
    (synopsis "Allows for the creation of serialised Rust tests")
    (description "Allows for the creation of serialised Rust tests")
    (license license:expat)))

(define-public rust-serial-test-derive-0.7
  (package
    (name "rust-serial-test-derive")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "serial-test-derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1wjrhql36lsgjw9zg5c95px0mq74ry5m46hwiwgnh7dyn98217nb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro-error" ,rust-proc-macro-error-1)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-rustversion" ,rust-rustversion-1)
                       ("rust-syn" ,rust-syn-1))
       #:cargo-development-inputs (("rust-env-logger" ,rust-env-logger-0.9)
                                   ("rust-trybuild" ,rust-trybuild-1))))
    (home-page "https://github.com/palfrey/serial_test/")
    (synopsis "Helper crate for serial_test")
    (description "Helper crate for serial_test")
    (license license:expat)))

(define-public rust-keynergy-0.2
  (package
    (name "rust-keynergy")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "keynergy" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
		"1vp5c4hf7634zq1h8w6bhd4digiqvl208hfkg2a4anp8nb1cfzby"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-ketos" ,rust-ketos-0.11)
                       ("rust-ketos-derive" ,rust-ketos-derive-0.12)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-toml" ,rust-toml-0.5))
       #:cargo-development-inputs (("rust-criterion" ,rust-criterion-0.3))))
    (home-page "https://github.com/keynergy/keynergy")
    (synopsis "An efficient and extensible layout analysis library")
    (description "An efficient and extensible layout analysis library")
    (license license:gpl3+)))
