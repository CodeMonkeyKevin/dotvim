set nocompatible                  " Must come first because it changes other options.


map <Leader>m <Plug>MakeGreen
let g:rubytest_in_quickfix = 1
let g:LustyJugglerSuppressRubyWarning = 1
let g:erlangHighlightBif = 1

silent! call pathogen#runtime_append_all_bundles()

call pathogen#helptags()

filetype plugin indent on         " Turn on file type detection.
syntax enable                     " Turn on syntax highlighting.
set ofu=syntaxcomplete#Complete
set completeopt=longest,menuone
set modelines=0

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.
set cursorline

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.
set linebreak
set formatoptions=tq
set wrapmargin=4
set textwidth=120

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

" Tab and indent settings
set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs
set smarttab
set laststatus=2                  " Show the status line all the time
set autoindent
set smartindent

set encoding=utf-8

set shell=/bin/bash               " Some commands seem to have problems with zsh"

set spl=en_us spell               " Enable spell checker

set wildignore+=vendor,log,tmp,*.swp  " Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

let mapleader = ","               " Change leader to ,

" Better regexp search
nnoremap / /\v
vnoremap / /\v
set gdefault
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" No more arrow keys to move around
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" nmap <leader>l :set list!<CR>     " Shortcut to rapidly toggle `set list`
set listchars=tab:▸\ ,eol:¬       " Use the same symbols as TextMate for tabstops and EOLs
set list!

colorscheme vividchalk            " Set theme

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove
"map <leader>T :CommandT<cr>
map <Leader>r <Plug>RubyTestRun " change from <Leader>t to <Leader>\
map <Leader>R <Plug>RubyFileRun " change from <Leader>T to <Leader>]
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

" Get rid of awkward Ex-mode
map Q <Esc>

imap <C-l> <space>=><space>

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby set foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

" For the MakeGreen plugin and Ruby RSpec. Uncomment to use.
" autocmd BufNewFile,BufRead *_spec.rb compiler rspec

set backupdir=~/.backup,.
set directory=~/.backup,~/.tmp,.

let g:yankring_history_file = '.backup/yankring'          " Yankring History File Location

au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" Auto complete for ruby files
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" display Syntax Errors
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1

" Clear white spaces
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
nmap _= :call Preserve("normal gg=G")<CR>

nmap <leader>t :NERDTreeToggle<CR>

" Remove Trailing Whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Faster Ack search
nnoremap <leader>a :Ack

" html fold tag
nnoremap <leader>ft Vatzf

" Hard wrap
nnoremap <leader>q gqip

inoremap jj <ESC>

cd ~/Code                    " Set dir
