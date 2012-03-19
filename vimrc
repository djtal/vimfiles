" inspiration taken from multiple source including :
"   http://mislav.uniqpath.com/2011/12/vim-revisited/
"   http://stevelosh.com/blog/2010/09/coming-home-to-vim/
"   http://vimcasts.org/
"   http://amix.dk/vim/vimrc.html
"   https://www.destroyallsoftware.com/screencasts/catalog/some-vim-tips
"
call pathogen#infect()

" General option
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
" highlight current line
set cursorline

" Indentation
set ai "Auto indent
set si "Smart indet

let mapleader=","
nnoremap <leader><leader> <c-^>
nnoremap <leader><space> :noh<cr>

" Fast saving
nmap <leader>w :w!<cr>
" on the fly vimrc editing and applying
nmap <leader>v :tabedit $MYVIMRC<CR>
" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
  au BufNewFile,BufRead *.less setlocal ft=css
   " Treat JSON files like JavaScript
  au BufNewFile,BufRead *.json set ft=javascript
endif

" invisible char
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬


set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

nmap <C-N><C-N> :set invnumber<CR>


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

" netrw config
let g:netrw_liststyle=3

" block using arrow key (don't understand why at this time but try)
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

" statusline
" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" format markers:
"   %< truncation point
"   %n buffer number
"   %f relative path to file
"   %m modified flag [+] (modified), [-] (unmodifiable) or nothing
"   %r readonly flag [RO]
"   %y filetype [ruby]
"   %= split point for left and right justification
"   %-35. width specification
"   %l current line number
"   %L number of lines in buffer
"   %c current column number
"   %V current virtual column number (-n), if different from %c
"   %P percentage through buffer
"   %) end of width specification
" pb with fugitve call
set statusline=%<\ %n:%f\ %m%r%y\ %{fugitive#statusline()}\ %=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
" always show statusline
set laststatus=2



