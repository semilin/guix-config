import hy
from typing import List
from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
import os
terminal = guess_terminal()
mod = 'mod4'
os.system('emacs --daemon &')
os.system('wal -Rn')
keys = [Key([mod], 'b', lazy.layout.left(), desc='Move focus to left'), Key([mod], 'f', lazy.layout.right(), desc='Move focus to right'), Key([mod], 'n', lazy.layout.down(), desc='Move focus down'), Key([mod], 'p', lazy.layout.up(), desc='Move focus up'), Key([mod], 'r', lazy.spawncmd(), desc='Spawn a command using prompt widget'), Key([mod], 'w', lazy.window.kill(), desc='Kill focused window'), Key([mod], 'Return', lazy.spawn(terminal), desc='Launch terminal'), Key([mod], 'e', lazy.spawn('emacsclient -c'), desc='Launch Emacs'), Key([mod], 'g', lazy.spawn('flameshot gui'), desc='Launch flameshot'), Key([mod, 'control'], 'r', lazy.restart(), desc='Restart Qtile'), Key([mod, 'control'], 'q', lazy.shutdown(), desc='Shutdown Qtile')]
groups = [Group(i) for i in '123456789']
for i in groups:
    keys.extend([Key([mod], i.name, lazy.group[i.name].toscreen(), desc=f'Switch to group {i.name}')])
    keys.extend([Key([mod, 'shift'], i.name, lazy.window.togroup(i.name), desc=f'Switch to group {i.name}')])
layouts = [layout.Bsp(ratio=1)]
widget_defaults = dict(font='sans', fontsize=20, padding=3)
screens = [Screen(wallpaper='~/.config/qtile/background.jpg', wallpaper_mode='fill', bottom=bar.Bar([widget.CurrentLayout(), widget.GroupBox(), widget.Prompt(), widget.WindowName(), widget.Chord(chords_colors={'launch': ('#ff0000', '#ffffff')}, name_transform=lambda name: name.upper()), widget.Battery(format='{char} {percent:2.0%} {hour:d}:{min:02d}'), widget.Clock(format='%Y-%m-%d %a %I:%M %p'), widget.QuickExit()], 24))]
