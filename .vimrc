" Load plugins through Pathogen
    execute pathogen#infect()
    execute pathogen#helptags()

" Syntax highlighting
    syntax on

" Filetype plugin
    set nocompatible
    filetype plugin on

" Line numbers
    set number
    highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Identation
    filetype plugin indent on
    set shiftwidth=2
    set softtabstop=2

" Shared clipboard
    set clipboard=unnamedplus

" Copy and paste on X clipboard
    map <leader>cc :w !xsel -i -b<CR>
    map <leader>cp :w !xsel -i -p<CR>
    map <leader>cs :w !xsel -i -s<CR>
    map <leader>pp :r!xsel -p<CR>
    map <leader>ps :r!xsel -s<CR>
    map <leader>pb :r!xsel -b<CR>

" Highlight searches
    set hlsearch

" Pane navigation
    nnoremap <c-j> <c-w>j
    nnoremap <c-k> <c-w>k
    nnoremap <c-h> <c-w>h
    nnoremap <c-l> <c-w>l

" Tab navigation
    map <C-k> :tabn<CR>
    map <C-j> :tabp<CR>
    map <C-n> :tabnew<CR>

" Tab bar
    hi TabLineFill ctermfg=Black ctermbg=White
    hi TabLine ctermfg=Blue ctermbg=Black
    hi TabLineSel ctermfg=Red ctermbg=Black

" NERDTree toggle key
    map <C-m> :NERDTreeToggle<CR>

" Highlight trailing whitespaces
    highlight ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$/
    autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhitespace /\s\+$/
    autocmd BufWinLeave * call clearmatches()

" Syntastic settings
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

" Tagbar toggle key
    nmap <F8> :TagbarToggle<CR>

" Window name
    let &titlestring = @%
    set title

" Interpret .md files, etc. as .markdown
    let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" Navigating with guides
    inoremap ;;<Space> <Esc>/<++><Enter>"_c4l
    vnoremap ;;<Space> <Esc>/<++><Enter>"_c4l
    map ;;<Space> <Esc>/<++><Enter>"_c4l
    inoremap ;gui <++>

" Goyo plugin for writing distraction free
    map <F10> :Goyo<CR>
    inoremap <F10> <esc>:Goyo<CR>a
