" Line config
syntax on
set number
set relativenumber
"set nowrap
set scrolloff=4

" Tabs config
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Search config
set smartcase
set incsearch

" Finding files
set path+=**
set wildmenu

" Splits
set splitright
set splitbelow

" Remap CapsLock to Esc
au VimEnter * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Status Line
set laststatus=2
set statusline+=\%#Search#
set statusline+=\[%n] " buffer number
set statusline+=\ %f " rel path to the file in buffer 
set statusline+=\ %r " read only flag
set statusline+=\%m " modified flag
set statusline+=\ %= " separator
set statusline+=\%y " type of the file in buffer
set statusline+=\%#CursorLineNr#
set statusline+=\ (%p%%) " percentage through file in lines
set statusline+=\ %l " current line number
set statusline+=\/%L " total number of lines
set statusline+=\ :\ %c " column number

" Insert mode remaps / auto-completions
" - Double Quotes
inoremap "      ""<Left>
inoremap ""     ""
" - Single Quotes
inoremap '      ''<Left>
inoremap ''     ''
" - Parens
inoremap (      ()<Left>
inoremap ()     ()
" - Brackets
inoremap [      []<Left>
inoremap []     []
" - Braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {}     {}
