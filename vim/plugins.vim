" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'airblade/vim-gitgutter'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'vim-ruby/vim-ruby'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'
Plugin 'git://github.com/tpope/vim-surround.git'
"Plugin 'git://github.com/tiagofumo/vim-nerdtree-syntax-highlight'
"Plugin 'ryanoasis/vim-devicons'
Plugin 'dracula/vim'
Plugin 'git://github.com/zeis/vim-kolor'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'janko-m/vim-test'
Plugin 'chriskempson/base16-vim'
Plugin 'uptech/vim-open-alternate'
Plugin 'ngmy/vim-rubocop'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'elixir-editors/vim-elixir'
Plugin 'slim-template/vim-slim.git'
Plugin 'mileszs/ack.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plugin 'junegunn/fzf.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-repeat'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'phpactor/phpactor'
Plugin 'rizzatti/dash.vim'
Plugin 'easymotion/vim-easymotion'

call vundle#end()            " required
filetype plugin indent on    " required
