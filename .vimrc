"""
""" General
"""

" Window name
let &titlestring = @%
set title

" Syntax highlighting
syntax on

" Visual mode color
highlight Visual cterm=reverse ctermbg=NONE
colorscheme slate

" Line numbers
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Highlight searches
set hlsearch
hi Search cterm=bold ctermfg=yellow ctermbg=grey
set ignorecase smartcase

" Invisible characters
set list
set listchars=tab:ᐅ\ 

" Highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/

" Cursor Mode Settings
 let &t_SI.="\e[5 q" "SI = INSERT mode
 let &t_SR.="\e[4 q" "SR = REPLACE mode
 let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" Reset cursor on start to start with block:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END
