set number
syntax on

set clipboard+=unnamed

let mapleader=','

inoremap ;; <Esc>

call plug#begin()
Plug 'morhetz/gruvbox'

Plug 'mhinz/vim-startify'

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Yggdroot/indentLine'

Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-surround'

Plug 'junegunn/fzf' 
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'majutsushi/tagbar'

Plug 'lfv89/vim-interestingwords'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'

Plug 'junegunn/gv.vim'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
call plug#end()

set updatetime=100	" 100ms
set background=dark
colorscheme gruvbox

" deoplete
let g:deoplete#enable_at_startup = 1
set completeopt-=preview

" nerd tree
nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.o$', '\~$']
set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*
let NERDTreeRespectWildIgnore=1

" tagbar
nnoremap <leader>t :TagbarToggle<cr>

" ctrlp
let g:ctrlp_map = '<c-p>'

" easy motion
nmap ss <Plug>(easymotion-s2)
