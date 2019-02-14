" Name:     Kinesis Freestyle Pro (KB900) layout plugin for Vim
" Author:   John Elliott <john@primitivemachine.com>
" URL:      https://github.com/johnelliott/vim-kinesis-kb900.git
" License:  Unlicense
" Created:  2019-02-13
" Modified: 2019-02-13

if exists('b:current_syntax')
  finish
endif

"kb900
syntax match kb900ActionToken "\c\v\{(A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|1|2|3|4|5|6|7|8|9|0|-|\=|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|F16|F17|F18|F19|F20|F21|F22|F23|F24|LSHFT|RSHFT|LALT|RALT|LWIN|RWIN|LCTRL|RCTRL|OBRK|CBRK|PER|COM|APOS|TILDE|/|\\|MUTE|VOL+|VOL-|PLAY|NEXT|PREV|LMOUS|RMOUS|MMOUS|MOUS4|MOUS5|ENT|TAB|SPC|DEL|BSPC|HOME|END|PUP|PDN|LFT|RGHT|UP|DWN|ESC|PRNT|PAUSE|SCRLK|INS|NUMLK|KP1|KP2|KP3|KP4|KP5|KP6|KP7|KP8|KP9|KP0|KP+|KP-|KP/|KP*|KPENT|KP=|KP.|CAPS|FNTOG|FNSHF|MENU|INTL/|CALC|SHTDN|LED|NULL)\}"
syntax match kb900RemapToken "\c\v\[(A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|1|2|3|4|5|6|7|8|9|0|-|\=|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|F16|F17|F18|F19|F20|F21|F22|F23|F24|LSHFT|RSHFT|LALT|RALT|LWIN|RWIN|LCTRL|RCTRL|OBRK|CBRK|PER|COM|APOS|TILDE|/|\\|MUTE|VOL+|VOL-|PLAY|NEXT|PREV|LMOUS|RMOUS|MMOUS|MOUS4|MOUS5|ENT|TAB|SPC|DEL|BSPC|HOME|END|PUP|PDN|LFT|RGHT|UP|DWN|ESC|PRNT|PAUSE|SCRLK|INS|NUMLK|KP1|KP2|KP3|KP4|KP5|KP6|KP7|KP8|KP9|KP0|KP+|KP-|KP/|KP*|KPENT|KP=|KP.|CAPS|FNTOG|FNSHF|MENU|INTL/|CALC|SHTDN|LED|NULL)\]"
syntax match kb900ShiftToken  "\c\v\{[+-](A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|1|2|3|4|5|6|7|8|9|0|-|\=|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|F16|F17|F18|F19|F20|F21|F22|F23|F24|LSHFT|RSHFT|LALT|RALT|LWIN|RWIN|LCTRL|RCTRL|OBRK|CBRK|PER|COM|APOS|TILDE|/|\\|MUTE|VOL+|VOL-|PLAY|NEXT|PREV|LMOUS|RMOUS|MMOUS|MOUS4|MOUS5|ENT|TAB|SPC|DEL|BSPC|HOME|END|PUP|PDN|LFT|RGHT|UP|DWN|ESC|PRNT|PAUSE|SCRLK|INS|NUMLK|KP1|KP2|KP3|KP4|KP5|KP6|KP7|KP8|KP9|KP0|KP+|KP-|KP/|KP*|KPENT|KP=|KP.|CAPS|FNTOG|FNSHF|MENU|INTL/|CALC|SHTDN|LED||NULL)\}"

" spacebars keys
syntax match kb900ActionToken "\c\v\{(lspc|rspc)\}"
syntax match kb900RemapToken  "\c\v\[(lspc|rspc)\]"
syntax match kb900ShiftToken  "\c\v\{[+-](lspc|rspc)\}"

" hotkeys (default layer)
syntax match kb900ActionToken "\c\v\{(hk1|hk2|hk3|hk4|hk5|hk6|hk7|hk8|hk9|hk10)\}"
syntax match kb900RemapToken  "\c\v\[(hk1|hk2|hk3|hk4|hk5|hk6|hk7|hk8|hk9|hk10)\]"
syntax match kb900ShiftToken  "\c\v\{[+-](hk1|hk2|hk3|hk4|hk5|hk6|hk7|hk8|hk9|hk10)\}"

" Miscellaneous
syntax match kb900Comment     "\v^\*.*$"
syntax match kb900DelayToken  "\v\{d(125|500)\}"
syntax match kb900Operator    "\V>"
syntax match kb900RepeatToken "\v\{x[1-9]\}"
syntax match kb900SpeedToken  "\v\{s[1-9]\}"
syntax match kb900ShiftToken  "\c\v^fn"

highlight link kb900ActionToken   Statement
highlight link kb900Comment       Comment
highlight link kb900DelayToken    Type
highlight link kb900RemapToken    Identifier
highlight link kb900ShiftToken    Special
highlight link kb900SpeedToken    Constant
highlight link kb900RepeatToken   Number

let b:current_syntax = 'kb900'
