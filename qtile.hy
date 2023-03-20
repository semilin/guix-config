(import typing [List])

(import libqtile [bar layout widget])
(import libqtile.config [Click Drag Group Key Match Screen])
(import libqtile.lazy [lazy])
(import libqtile.utils [guess_terminal])

(import os)

(setv terminal (guess_terminal))
(setv mod "mod4")

(os.system "emacs --daemon &")
(os.system "wal -Rn")

(setv keys
      ;; switch between windows
      [(Key [mod] "b" (lazy.layout.left) :desc "Move focus to left")
       (Key [mod] "f" (lazy.layout.right) :desc "Move focus to right")
       (Key [mod] "n" (lazy.layout.down) :desc "Move focus down")
       (Key [mod] "p" (lazy.layout.up) :desc "Move focus up")
       
       (Key [mod] "r" (lazy.spawncmd) :desc "Spawn a command using prompt widget")

       (Key [mod] "w" (lazy.window.kill) :desc "Kill focused window")

       (Key [mod] "Return" (lazy.spawn terminal) :desc "Launch terminal")
       (Key [mod] "e" (lazy.spawn "emacsclient -c") :desc "Launch Emacs")
       (Key [mod] "g" (lazy.spawn "flameshot gui") :desc "Launch flameshot")

       (Key [mod "control"] "r" (lazy.restart) :desc "Restart Qtile")
       (Key [mod "control"] "q" (lazy.shutdown) :desc "Shutdown Qtile")])

(setv groups (lfor i "123456789" (Group i)))

(for [i groups]
  (keys.extend [(Key [mod] i.name
                     (.toscreen (get lazy.group i.name))
                     :desc f"Switch to group {i.name}")])
  (keys.extend [(Key [mod "shift"] i.name
                     (lazy.window.togroup i.name)
                     :desc f"Switch to group {i.name}")]))

(setv layouts [(layout.Bsp :ratio 1)])

(setv widget_defaults (dict :font "sans" :fontsize 20 :padding 3))

(setv screens [(Screen :wallpaper "~/.config/qtile/background.jpg"
                       :wallpaper_mode "fill"
                       :bottom (bar.Bar
                                 [(widget.CurrentLayout)
                                  (widget.GroupBox)
                                  (widget.Prompt)
                                  (widget.WindowName)
                                  (widget.Chord :chords_colors {"launch" #("#ff0000" "#ffffff")}
                                                :name_transform (fn [name]
                                                                  (.upper name)))
                                  (widget.Battery :format "{char} {percent:2.0%} {hour:d}:{min:02d}")
                                  (widget.Clock :format "%Y-%m-%d %a %I:%M %p")
                                  (widget.QuickExit)]
                                 24))])
