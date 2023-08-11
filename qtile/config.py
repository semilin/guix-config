import hy
from typing import List
from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
from hyrule import flatten
import os
terminal = guess_terminal()
mod = 'mod4'
os.system('emacs --daemon &')
os.system('wal -Rn')
colors = {'white': 'ffffff', 'black': '000000', 'purple': '50278a', 'green': '2cf5bf', 'blue': '0c2e54'}
keys = [Key([mod], 'c', lazy.layout.left(), desc='Move focus to left'), Key([mod], 'a', lazy.layout.right(), desc='Move focus to right'), Key([mod], 'd', lazy.layout.down(), desc='Move focus down'), Key([mod], 'e', lazy.layout.up(), desc='Move focus up'), Key([mod, 'shift'], 'c', lazy.layout.flip_left(), desc='Swap left'), Key([mod, 'shift'], 'a', lazy.layout.flip_right(), desc='Swap right'), Key([mod, 'shift'], 'd', lazy.layout.flip_down(), desc='Swap down'), Key([mod, 'shift'], 'e', lazy.layout.flip_up(), desc='Swap up'), Key([mod], 'r', lazy.spawncmd(), desc='Spawn a command using prompt widget'), Key([mod], 'k', lazy.spawn('slock'), desc='Lock'), Key([mod], 'w', lazy.window.kill(), desc='Kill focused window'), Key([mod], 'f', lazy.window.toggle_floating(), desc='Toggle focused window floating state'), Key([mod], 'Return', lazy.spawn(terminal), desc='Launch terminal'), Key([mod], 'm', lazy.spawn('emacsclient -c'), desc='Launch Emacs'), Key([mod], 'g', lazy.spawn('flameshot gui'), desc='Launch flameshot'), Key([], 'XF86AudioLowerVolume', lazy.widget['volume'].decrease_vol()), Key([], 'XF86AudioRaiseVolume', lazy.widget['volume'].increase_vol()), Key([], 'XF86AudioMute', lazy.widget['volume'].mute()), Key([], 'XF86MonBrightnessUp', lazy.spawn('brightnessctl set +5%'), desc='Raise brightness'), Key([], 'XF86MonBrightnessDown', lazy.spawn('brightnessctl set 5%-'), desc='Lower brightness'), Key([mod, 'control'], 'r', lazy.restart(), desc='Restart Qtile'), Key([mod, 'control'], 'q', lazy.shutdown(), desc='Shutdown Qtile')]
groups = [Group(i) for i in '123456789']
for i in groups:
    keys.extend([Key([mod], i.name, lazy.group[i.name].toscreen(), desc=f'Switch to group {i.name}')])
    keys.extend([Key([mod, 'shift'], i.name, lazy.window.togroup(i.name), desc=f'Switch to group {i.name}')])
layouts = [layout.Bsp(ratio=1)]
widget_defaults = dict(font='Iosevka Nerd Font', fontsize=20, padding=10)
hy.macros.require('hyrule.macrotools', None, assignments=[['with-gensyms', 'with-gensyms']], prefix='')

def _hy_anon_var_2(hyx_XampersandXcompiler, colors, l):
    color = hy.gensym(hy.models.Symbol('color'))
    n = hy.gensym(hy.models.Symbol('n'))
    group = hy.gensym(hy.models.Symbol('group'))
    item = hy.gensym(hy.models.Symbol('item'))
    if False:
        (color,) = None

    def _hy_anon_var_1():
        nonlocal color
        for [n, group] in enumerate(l):
            color = hy.models.Expression([hy.models.Symbol('get'), colors, 'blue' if 0 == n % 2 else 'purple'])
            yield [hy.models.Expression([hy.models.Expression([hy.models.Symbol('.'), hy.models.Symbol('widget'), hy.models.Symbol('TextBox')]), hy.models.Keyword('text'), item, hy.models.Keyword('background'), color]) if hy.models.String == type(item) else item + (hy.models.Keyword('background'), color) for item in group]
    return [].__class__(_hy_anon_var_1())
hy.macros.macro('make-bar')(_hy_anon_var_2)
acmd = 'amixer set Master '
screens = [Screen(wallpaper='~/.config/qtile/background.jpg', wallpaper_mode='fill', bottom=bar.Bar([widget.CurrentLayout(), widget.GroupBox(rounded=True, borderwidth=1, padding=4, this_current_screen_border=colors['purple'], highlight_method='block'), widget.Prompt(), widget.WindowName(), widget.Chord(chords_colors={'launch': ('#ff0000', '#ffffff')}, name_transform=lambda name: name.upper())] + flatten([[widget.TextBox(text='\uf0e7', background=colors['blue']), widget.Battery(format='{char} {percent:2.0%} {hour:d}:{min:02d}', background=colors['blue'])], [widget.TextBox(text='\uf025', background=colors['purple']), widget.Volume(mute_command=acmd + 'toggle', volume_up_command=acmd + '5%+', volume_down_command=acmd + '5%-', background=colors['purple'])], [widget.TextBox(text='\uf2db', background=colors['blue']), widget.CPUGraph(background=colors['blue'])], [widget.TextBox(text='\uf1eb', background=colors['purple']), widget.NetGraph(background=colors['purple'])], [widget.TextBox(text='\uf017', background=colors['blue']), widget.Clock(format='%Y-%m-%d %a %I:%M %p', background=colors['blue'])]]), 24))]
