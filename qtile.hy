(import typing [List])

(import libqtile [bar layout widget])
(import libqtile.config [Click Drag Group Key Match Screen])
(import libqtile.lazy [lazy])
(import libqtile.utils [guess_terminal])

(import hyrule [flatten])

(import os)

(setv terminal (guess_terminal))
(setv mod "mod4")

(os.system "emacs --daemon &")
(os.system "wal -Rn")

(setv colors {"white" "ffffff"
              "black" "000000"
              "purple" "50278a"
              "green" "2cf5bf"
              "blue" "0c2e54"})

(setv keys
      ;; switch between windows
      [(Key [mod] "c" (lazy.layout.left) :desc "Move focus to left")
       (Key [mod] "a" (lazy.layout.right) :desc "Move focus to right")
       (Key [mod] "d" (lazy.layout.down) :desc "Move focus down")
       (Key [mod] "e" (lazy.layout.up) :desc "Move focus up")

       (Key [mod "shift"] "c" (lazy.layout.flip_left) :desc "Swap left")
       (Key [mod "shift"] "a" (lazy.layout.flip_right) :desc "Swap right")
       (Key [mod "shift"] "d" (lazy.layout.flip_down) :desc "Swap down")
       (Key [mod "shift"] "e" (lazy.layout.flip_up) :desc "Swap up")
       
       (Key [mod] "r" (lazy.spawncmd) :desc "Spawn a command using prompt widget")
       (Key [mod] "k" (lazy.spawn "slock") :desc "Lock")

       (Key [mod] "w" (lazy.window.kill) :desc "Kill focused window")
       (Key [mod] "f" (lazy.window.toggle_floating) :desc "Toggle focused window floating state")

       (Key [mod] "Return" (lazy.spawn terminal) :desc "Launch terminal")
       (Key [mod] "m" (lazy.spawn "emacsclient -c") :desc "Launch Emacs")
       (Key [mod] "g" (lazy.spawn "flameshot gui") :desc "Launch flameshot")

       (Key [] "XF86AudioLowerVolume" (.decrease_vol (get lazy.widget "volume")))
       (Key [] "XF86AudioRaiseVolume" (.increase_vol (get lazy.widget "volume")))
       (Key [] "XF86AudioMute" (.mute (get lazy.widget "volume")))

       (Key [] "XF86MonBrightnessUp" (lazy.spawn "brightnessctl set +5%") :desc "Raise brightness")
       (Key [] "XF86MonBrightnessDown" (lazy.spawn "brightnessctl set 5%-") :desc "Lower brightness")
       
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

(setv widget_defaults (dict :font "Iosevka Nerd Font" :fontsize 20 :padding 10))

(require hyrule.macrotools [with-gensyms])

;; stupid macro to automatically alternate background colors because
;; I'm too lazy to change it manually when rearranging widgets
(defmacro make-bar [colors l]
  (with-gensyms [color n group item]
    (lfor [n group] (enumerate l)
          (do (setv color `(get ~colors ~(if (= 0 (% n 2)) "blue" "purple")))
              (lfor item group
                    (if (= hy.models.String (type item))
                        `(widget.TextBox :text ~item :background ~color)
                        (+ item #(:background color))))))))

(setv acmd "amixer set Master ")
(setv screens [(Screen :wallpaper "~/.config/qtile/background.jpg"
                       :wallpaper_mode "fill"
                       :bottom (bar.Bar
                                 (+ [(widget.CurrentLayout)
                                     (widget.GroupBox
                                       :rounded True
                                       :borderwidth 1
                                       :padding 4
                                       :this_current_screen_border (get colors "purple")
                                       :highlight_method "block")
                                     (widget.Prompt)
                                     (widget.WindowName)
                                     (widget.Chord :chords_colors {"launch" #("#ff0000" "#ffffff")}
                                                   :name_transform (fn [name]
                                                                     (.upper name)))]
                                    (flatten
                                      (make-bar colors
                                                [["" (widget.Battery :format "{char} {percent:2.0%} {hour:d}:{min:02d}")]
                                                 ["" (widget.Volume :mute_command (+ acmd "toggle")
                                                                     :volume_up_command (+ acmd "5%+")
                                                                     :volume_down_command (+ acmd "5%-"))]
                                                 ["" (widget.CPUGraph)]
                                                 ["" (widget.NetGraph)]
                                                 ["" (widget.Clock :format "%Y-%m-%d %a %I:%M %p")]])))
                                 24))])
