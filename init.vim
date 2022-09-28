call plug#begin()


Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'scrooloose/nerdtree'

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
noremap <C-t> :tabnew <cr>
noremap <C-S> :w! <cr> 
noremap <C-n> :tabn <cr>
noremap <C-x> :tabc <cr>

set number
set autochdir

call plug#end()

