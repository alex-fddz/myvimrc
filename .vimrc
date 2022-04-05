" Line config
set number
set nowrap
set scrolloff=4

" Tabs config
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Search config
set smartcase
set incsearch

" Remap CapsLock to Esc
au VimEnter * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Finding files
set path+=**
set wildmenu

" Splits
set splitright
"set splitbelow
