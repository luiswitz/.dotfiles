source ~/.vim/plugins.vim
source ~/.vim/functions.vim

set t_Co=256
set wildmenu
set ttimeoutlen=50

let mapleader=" "
set nocursorline
set hlsearch
filetype plugin on
syntax on
set guifont=*
set cc=80

set nocompatible              " be iMproved, required
filetype off                  " required
set noswapfile

nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>

nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>

nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>

nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>


" let test#ruby#spec_framework = "minitest"
let test#ruby#spec_framework = "rspec"
nnoremap <leader><leader>t :call SwitchSpecCommand()<cr>

" escape alias
inoremap jj <esc>
inoremap jJ <esc>
inoremap Jj <esc>
inoremap JJ <esc>

" saves from normal mode
nnoremap <leader>s :w<cr>
nnoremap <leader>S :w<cr>

" new tab
nnoremap <c-w>t :tabnew<cr>

" Rubocop
autocmd FileType ruby nnoremap <buffer> <leader>cs  :call RubocopFixCs()<cr>

if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
endif

if has("mac")
  set clipboard=unnamed
elseif has("unix")
  set clipboard=unnamedplus
endif

" Performance improvments
if has("mac")
  set nocursorline

  if exists("+relativenumber")
    set norelativenumber
  endif

  set foldlevel=0
  set foldmethod=manual
endif


nnoremap <leader>f <ESC>/
nnoremap <leader>* <ESC>:find<space>

nnoremap <silent> <leader>F :nohlsearch<CR>

autocmd FileType ruby nnoremap <leader>ccs :RuboCop<cr>
autocmd FileType ruby nnoremap <leader>av :OpenAlternate<cr>

" Ctrl p
"let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
"if executable('ag')
"  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"endif

" fzf
nnoremap <C-p> :Files<CR>

filetype plugin indent on    " required

set laststatus=2
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1
let g:Powerline_symbols='unicode'

set number

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set guicursor=i:ver25-iCursor-blinkon200-blinkoff200-blinkwait2000
set guicursor=n:ver25-iCursor

"color dracula
"color jellybeans
color base16-tomorrow

"GitGutterEnable
let g:gitgutter_realtime=0
let g:gitgutter_eager=0

map <C-n> :NERDTreeToggle<CR>

set clipboard=unnamed
set mouse=a
if !has('nvim')
  set ttymouse=xterm2
endif

"NerdTree
let g:NERDTreeMouseMode=3

" NERDTress File highlighting
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['scss'] = s:blue " sets the color of css files to blue

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

hi Directory guifg=#FF0000 ctermfg=green

let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

augroup vimrc-ruby
  autocmd!
  autocmd BufNewFile,BufRead *.rb,*.rbw,*.gemspec setlocal filetype=ruby
  autocmd FileType ruby set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
augroup END

let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

" map keys

" config vim test
nnoremap <silent> <leader>t :TestNearest<CR>
nnoremap <silent> <leader>T :TestFile<CR>
nnoremap <silent> <leader>a :TestSuite<CR>
nnoremap <silent> <leader>l :TestLast<CR>
nnoremap <silent> <leader>g :TestVisit<CR>

" adapt test for docker-compose
noremap <silent> <leader>d :call DockerTestNearest()<CR>
noremap <silent> <leader>D :call DockerTestFile()<CR>

" git
noremap <silent> <leader>gl :call GitLog()<CR>
noremap <silent> <leader>gb :Gblame<CR>

" git blame
" noremap <silent> <leader>gb :execute '!git blame %:'.line(".")<CR>

" Vim repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" rubocop
let g:vimrubocop_keymap = 0
autocmd FileType ruby nnoremap <leader>ccs :RuboCop<cr>

" clear search
nnoremap <silent> <leader>F :nohlsearch<CR>

" base 16 color
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" execute file
noremap <silent> <leader>e :execute '!clear && ./%'<CR>
nnoremap <leader>st <esc>:! clear && ./shell_test.sh<cr>

" Argument rewrap
nnoremap <leader>wa :call argumentrewrap#RewrapArguments()<CR>
