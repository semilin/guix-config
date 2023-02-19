# Guix config
These are my Guix home configuration files. Currently it doesn't
include the system config files because I don't know how to do that. I
also don't really know what I'm doing in general so you probably
shouldn't copy much from this.

## Window manager
I'm trying out qtile and wayland. Because I like s-expressions,
[qtile.hy](./qtile.hy) is transpiled to [qtile/config.py](./qtile/config.py) at build time
with `hy2py`, which is then linked to
`~/.config/qtile/configuration.py`.

## Xremap
I'm using [xremap](https://github.com/k0kubun/xremap) for layout
modification stuff. I don't want to deal with xkb anymore, but for
some reason I can't get Rust 1.64 to compile so
[Kanata](https://github.com/jtroo/kanata) isn't really
usable. Therefore, Xremap seems like a pretty interesting
alternative. They actually might be able to work well with each other,
so I think I'll keep using Xremap even once I get Kanata working.

## Custom packages
My custom packages, including xremap and the Nerd Fonts patched
Iosevka, are stored in [custom/semi/packages/](./custom/semi/packages/). Adding new
packages to Guix is surprisingly easy and strangely satisfying.
