" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'dracula/vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'git://github.com/ErichDonGubler/vim-sublime-monokai'
Plugin 'git://github.com/tpope/vim-surround.git'
Plugin 'git://github.com/zeis/vim-kolor'
Plugin 'jakobwesthoff/argumentrewrap'
Plugin 'janko-m/vim-test'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'jparise/vim-graphql'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plugin 'junegunn/fzf.vim'
Plugin 'keith/rspec.vim'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'mxw/vim-jsx'
Plugin 'ngmy/vim-rubocop'
Plugin 'pangloss/vim-javascript'
Plugin 'rizzatti/dash.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'uptech/vim-open-alternate'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()            " required
filetype plugin indent on    " required
