call pathogen#infect()

set nocompatible
syntax on
set background=dark
colorscheme molokai
set softtabstop=2
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

set ai "Auto indent
set si "Smart indet

nnoremap <leader><space> :noh<cr>

" ,, to change to alternate file in buffer file list
nnoremap <leader><leader> <c-^>

au BufNewFile,BufRead *.less setlocal ft=css

set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE
gui=NONE guifg=DarkGrey guibg=NONE

nmap <C-N><C-N> :set invnumber<CR>

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
  au BufNewFile,BufRead *.less setlocal ft=css
   " Treat JSON files like JavaScript
  au BufNewFile,BufRead *.json set ft=javascript
endif

" block using arrow key (don't understand why at this time but try)
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>


" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <leader>ft Vatzf

imap <c-l> <space>=><space>

" jj alow to go out from insert/edit mode
inoremap jj <ESC>

" always show statusline
set laststatus=2

" netrw confi
let g:netrw_liststyle=3

" Plugins config and mapping

"Ack
nnoremap <leader>a :Ack
