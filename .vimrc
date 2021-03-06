"vim runtime configuration file
scriptencoding utf-8

set nocompatible
filetype on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

filetype plugin indent on

set ai cindent
set ts=2 sw=2
set expandtab
set nu
set hlsearch
set ruler
set t_Co=256
set background=dark
set ic
set fo+=r
set exrc
set colorcolumn=80
syntax enable

colo solarized

"Unite
let g:unite_source_history_yank_enable = 1
nnoremap <C-p> :Unite -start-insert file_rec/async<cr>
nnoremap <space>e :Unite file:.<cr>
nnoremap <space>/ :Unite grep:.<cr>
nnoremap <space>s :Unite -quick-match buffer<cr>
nnoremap <space>o :Unite outline<cr>
nnoremap <space>y :Unite history/yank<cr>
nnoremap <space>t :Unite tab<cr>
nnoremap <space>r :UniteResume<cr>
