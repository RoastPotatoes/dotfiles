syntax on
:autocmd BufReadPre,BufNewFile * let b:did_ftplugin = 1

syntax enable
set background=dark
set number
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

set nocompatible
execute pathogen#infect()
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
colorscheme ron
"Leader binds"
let mapleader = "\<Space>"
nnoremap <Leader>c :LanguageToolCheck<CR>
nnoremap <Leader>cl :LanguageToolClear<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :wq<CR>
nnoremap <Leader>g :Goyo<CR>
set complete+=kspell
:let g:languagetool_jar='$HOME/.languagetool/languagetool-commandline.jar'
:let g:languagetool_lang="en-GB"
