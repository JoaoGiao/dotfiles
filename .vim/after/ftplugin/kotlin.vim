" Identation
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab

" ALE
let b:ale_linters = {'kotlin': ['languageserver']}
let g:ale_kotlin_languageserver_executable = 'kotlin-language-server'
