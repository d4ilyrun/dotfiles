""""""""""""""""""""""""""""""""""""""
" => Vim-plug
"""""""""""""""""""""""""""""""""""""""

call plug#begin()

" StatusBar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'itchyny/lightline.vim'

" Navigation
Plug 'scrooloose/nerdtree'
Plug 'vifm/vifm.vim' 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'	 	" Auto close brackets etc

" Colors
Plug 'ap/vim-css-color'    " Color previewer
Plug 'dikiaap/minimalist'
Plug 'sainnhe/sonokai'

call plug#end()

""""""""""""""""""""""""""""""""""""""
" => Settings
"""""""""""""""""""""""""""""""""""""""
set clipboard=unnamedplus

""""""""""""""""""""""""""""""""""""""
" => File explorer   
"""""""""""""""""""""""""""""""""""""""
:nnoremap <C-e> :NERDTree<CR>
:nnoremap <C-p> :FZF<CR>


"""""""""""""""""""""""""""""""""""""""
" => Theme
"""""""""""""""""""""""""""""""""""""""
syntax on
:set number relativenumber		  " Line numbering

set t_Co=256
colorscheme sonokai


"""""""""""""""""""""""""""""""""""""""
" => statusbar
"""""""""""""""""""""""""""""""""""""""
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"""""""""""""""""""""""""""""""""""""""
" => Code sytling
"""""""""""""""""""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set expandtab
                    

"""""""""""""""""""""""""""""""""""""""
" => Keymaps
"""""""""""""""""""""""""""""""""""""""
:let mapleader = ","			  " Leader key

" edit / reload vim.rc
nnoremap <Leader>ve :e $MYVIMRC<CR>			" edit
nnoremap <Leader>vr :source $MYVIMRC<CR>	" reload

