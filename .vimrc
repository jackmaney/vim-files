set ttyfast
set noerrorbells
set shell=bash
set nocompatible
set undolevels=1000
set hidden
colorscheme inkpot
let mapleader = ","
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
set guifont=Inconsolata\ 14
set number
map av :so ~/.vimrc
set autoindent
set backspace=2         " more powerful backspacing
set ofu=syntaxcomplete#Complete
nnoremap <leader>g :tabprevious<CR><CR>
nnoremap <leader>h :tabnext<CR><CR>
call pathogen#infect('~/.vim/bundle')
syntax on
filetype plugin indent on
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
nnoremap <leader>nt :NERDTree<CR>
nnoremap <leader>nm <C-w>w
au BufRead,BufNewFile *.js.handlebars set filetype=javascript
au BufRead,BufNewFile *.html.handlebars set syntax=html

"Calling forth the <script> tag to invoke jQuery
function! JQ()
	read ~/.vim/snippets/jquery
endfunction

nnoremap <leader>jq :call JQ()<CR>

