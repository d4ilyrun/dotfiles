""""""""""""""""""""""""""""""""""""""
" => Vim-plug
"""""""""""""""""""""""""""""""""""""""

call plug#begin()

" StatusBar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Navigation
Plug 'scrooloose/nerdtree'
Plug 'vifm/vifm.vim' 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'	 	" Auto close brackets etc

" Colors
Plug 'ap/vim-css-color'    " Color previewer
Plug 'sainnhe/sonokai'
Plug 'ryanoasis/vim-devicons'

call plug#end()

""""""""""""""""""""""""""""""""""""""
" => Settings
"""""""""""""""""""""""""""""""""""""""
let mapleader = ","			    " Leader key
set clipboard=unnamedplus
set number relativenumber		" Line numbering
set nohlsearch                  " No highlight
set ignorecase                  " Case Insensitive search
set smartcase
set nobackup                    " No backup files

"""""""""""""""""""""""""""""""""""
" => File explorer   
"""""""""""""""""""""""""""""""""""""""
:nnoremap <C-e> :NERDTree<CR>
:nnoremap <C-p> :FZF<CR>


"""""""""""""""""""""""""""""""""""""""
" => Theme
"""""""""""""""""""""""""""""""""""""""
syntax on
set t_Co=256
colorscheme sonokai


"""""""""""""""""""""""""""""""""""""""
" => statusbar
"""""""""""""""""""""""""""""""""""""""
let g:airline_theme = 'sonokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'


"""""""""""""""""""""""""""""""""""""""
" => Code sytling
"""""""""""""""""""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set expandtab
                    

"""""""""""""""""""""""""""""""""""""""
" => Keymaps
"""""""""""""""""""""""""""""""""""""""

" edit / reload vim.rc
nnoremap <Leader>ve :e $MYVIMRC<CR>			" edit
nnoremap <Leader>vr :source $MYVIMRC<CR>	" reload

" tabs
nnoremap <C-t><BS>   :tabc<CR>      " close tab
nnoremap <C-t><C-t>  :tabnew<CR>    " new tab  
nnoremap <C-t><up>   :tabr<CR>      " first tab
nnoremap <C-t><down> :tabl<CR>      " last tab
nnoremap <C-t><left> :tabp<CR>      " previous tab
nnoremap <C-t><right> :tabn<CR> " next tab
