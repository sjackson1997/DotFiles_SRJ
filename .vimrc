" show line numbers
set number

" use relative line numbers
set relativenumber

" set colorscheme
colorscheme elflord

" show a visual line under the cursor's current line
set cursorline

" make invisible characters visible
set listchars=tab:▸\ ,eol:¬
set list

" This part below does not appear to work
"highlight NonText guifg=#4a4a59
highlight NonText guifg=#FC4806
highlight SpecialKey guifg=#FC4806
"highlight SpecialKey guifg=#4a4a59

" Custom key mappings created by Scott J
nnoremap <silent> <F5> :w<CR>:!%:p<CR>

" set tabs to have 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" show the matching part of the pair for [] {} and ()
set showmatch

" Required setting for vimwiki
syntax on

set nocompatible 
filetype off
filetype plugin on
"set rtp+=~/.vim/bundle/Vundle.vim 
"call vundle#begin() 
" let Vundle manage Vundle required!
"Plugin 'VundleVim/Vundle.vim'
"
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'vimwiki/vimwiki'
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
"
"call vundle#end()

"Trying alternate Plugin Manager 'Vim-Plug'

call plug#begin('~/.vim/plugged')


Plug 'Valloric/YouCompleteMe'
Plug 'vimwiki/vimwiki'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

call plug#end()
filetype plugin indent on
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
