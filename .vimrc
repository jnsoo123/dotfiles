let mapleader = ","
set re=1
nmap <Leader>f :FZF<cr>
nmap <Leader>w :w<cr>
nmap <Leader>q :q<cr>
nmap <Leader>v :vsplit<cr>
nmap <Leader>e :e<cr>
nmap <Leader>t :tabe<cr>
nmap <Leader>n :NERDTree<cr>
nmap <Leader>/ :s/^/#/g<cr>
nmap <Leader>\ :s/^//g<cr>
map <Leader>r :call RunCurrentSpecFile()<CR>
map <Leader>s :set hls!<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
map <F2> :Copen
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
set regexpengine=1
set nocompatible              " be iMproved, required
set number
set noswapfile

filetype off                  " required
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 0
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" My plugins
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-dispatch'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-projectionist'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/' }
Plugin 'tpope/vim-surround'
Plugin 'nelstrom/vim-mac-classic-theme'
"Plugin 'gorodinskiy/vim-coloresque'
Plugin 'thoughtbot/vim-rspec'
Plugin 'vim-airline/vim-airline'
Plugin 'kchmck/vim-coffee-script'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'slim-template/vim-slim.git'
Plugin 'mileszs/ack.vim'
Plugin 'rakr/vim-two-firewatch'
Plugin 'trevordmiller/nova-vim'
Plugin 'kaicataldo/material.vim'
Plugin 'szorfein/fromthehell.vim'
Plugin 'morhetz/gruvbox'
Plugin 'crusoexia/vim-monokai'
Plugin 'Yggdroot/indentLine'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'ryanoasis/vim-devicons'
Plugin 'arcticicestudio/nord-vim'
Plugin 'drewtempelmeyer/palenight.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set tabstop=2
set shiftwidth=2
set expandtab
syntax enable

" For indentLine
let g:indentLine_setColors = 0
let g:indentLine_color_term = 239
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" END

" Firewatch Theme START
"set termguicolors
"set background=dark " or light if you prefer the light version
"let g:two_firewatch_italics=0
"colo two-firewatch

"let g:airline_theme='twofirewatch' " if you have Airline installed and want the associated theme
" Firewatch Theme END

" OneDark Theme START
"let g:onedark_termcolors=16
"colorscheme onedark
"set background=dark
"let g:airline_theme='onedark'
" OneDark Theme END

" Aldiun Theme
"let g:onedark_termcolors=16
"colorscheme alduin
"set background=dark
"let g:airline_theme='twofirewatch'
" END

" NOVA Theme
"colorscheme nova
"let g:airline_theme='nova'
" END

" Palenlight Theme
"set termguicolors
"set background=dark
"colorscheme palenight
"let g:airline_theme='onedark'
"" END


" Gruvbox
"colorscheme dracula
colorscheme gruvbox
set background=dark
"let g:airline_theme='twofirewatch'
let g:airline_theme='gruvbox'
" End

"Nord
"colorscheme nord
"let g:airline_theme='nord'
"end

" Solarized Theme
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
"colorscheme solarized
"set background=dark
"let g:airline_theme='solarized'
" End

" Material Theme
"set termguicolors
"set background=dark
"syntax enable
"colorscheme material
"let g:material_theme_style='palenlight'
"let g:airline_theme = 'material'
" END

" Monokai Theme
"colorscheme monokai
"let g:airline_theme='badcat'
" END

" PaperColor Theme
"set t_Co=256   " This is may or may not needed.
"set background=light
"colorscheme PaperColor
"let g:airline_theme='papercolor'
" END

"set cursorline
"highlight CursorLine cterm=underline ctermbg=NONE
"highlight CursorLine ctermbg=Black
" To ignore plugin indent changes, instead use:
filetype plugin on
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"set cursorline
"let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
set laststatus=2
"let g:airline_theme='badcat'

let g:rspec_command = "Dispatch bin/rspec {spec}"
set encoding=UTF-8

" Vim-DevIcons
let g:WebDevIconsUnicodeDecorateFolderNodes=1
let g:DevIconsEnableFoldersOpenClose=1

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif
