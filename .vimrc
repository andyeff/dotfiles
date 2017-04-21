"Forget compatibility with Vi. Who cares.  
set nocompatible  
  
"Enable filetypes  
filetype on  
filetype plugin on  
filetype indent on  
syntax on  
  
"Write the old file out when switching between files.  
set autowrite  

"Display current cursor position in lower right corner.  
set ruler  
  
"Configure the leader
let mapleader = ","
imap jj <Esc>
imap jk <Esc>
imap kj <Esc>

"Ever notice a slight lag after typing the leader key + command? This lowers  
"the timeout.  
set timeoutlen=500  
  
"Switch between buffers without saving  
set hidden  
  
"Set the color scheme. Change this to your preference.   
"Here's 100 to choose from: http://www.vim.org/scripts/script.php?script_id=625  
colorscheme twilight  
  
"Set font type and size. Depends on the resolution. Larger screens, prefer h20  
set guifont=Menlo:h14  
  
"Tab stuff  
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab  
  
"Show command in bottom right portion of the screen  
set showcmd  
  
"Show lines numbers  
"set number  

"Prefer relative line numbering?  
set relativenumber  
  
"Indent stuff  
set smartindent  
set autoindent  
  
"Always show the status line  
set laststatus=2  
  
"Prefer a slightly higher line height  
set linespace=3  
  
"Better line wrapping   
set wrap  
set textwidth=79  
set formatoptions=qrn1  
  
"Set incremental searching"  
set incsearch  
  
"Highlight searching  
set hlsearch  
  
" case insensitive search  
set ignorecase  
set smartcase  
  
"Hide MacVim toolbar by default  
set go-=T  
  
"Hard-wrap paragraphs of text  
nnoremap <leader>q gqip  
  
"Enable code folding  
set foldenable  
  
"Hide mouse when typing  
set mousehide  
  
"Split windows below the current window.  
set splitbelow                
  
" session settings  
set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help  
    
"Map code completion to , + tab  
imap <leader><tab> <C-x><C-o>  
  
" More useful command-line completion  
set wildmenu  
  
"Auto-completion menu  
set wildmode=list:longest  
  
"http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE  
set completeopt=longest,menuone  
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"  
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :  
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'  
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :  
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'  
  
"Map escape key to jj -- much faster  
imap jj <esc>  

" Source the vimrc file after saving it. This way, you don't have to reload Vim to see the changes.  
if has("autocmd")  
 augroup myvimrchooks  
  au!  
  autocmd bufwritepost .vimrc source ~/.vimrc  
 augroup END  
endif  
  
" easier window navigation  
nmap <C-h> <C-w>h  
nmap <C-j> <C-w>j  
nmap <C-k> <C-w>k  
nmap <C-l> <C-w>l  

"set paste

" Leader bindings
" toggle search highlight
nnoremap <leader>f :set hlsearch!<CR>
nnoremap <silent> <leader>p :call Paste_on_off()<CR>
set pastetoggle=<leader>p


"{{{ Paste Toggle
let paste_mode = 0 " 0 = normal, 1 = paste

func! Paste_on_off()
   if g:paste_mode == 0
      set paste
      let g:paste_mode = 1
   else
      set nopaste
      let g:paste_mode = 0
   endif
   return
endfunc
"}}}

