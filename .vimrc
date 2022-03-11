let mapleader = ","
set re=1
"nmap <Leader>f :FZF<cr>
nmap <Leader>f <cmd>Telescope find_files<cr>
nmap <Leader>g :LazyGit<cr>
nmap <Leader>h :Gitsigns preview_hunk<cr>
nmap <Leader>b <cmd>Telescope buffers<cr>
nmap <Leader>w :w<cr>
nmap <Leader>q :q<cr>
nmap <Leader>v :vsplit<cr>
nmap <Leader>e :e<cr>
nmap <Leader>t :tabe<cr>
nmap <Leader>n :NvimTreeToggle<cr>
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
Plugin 'tpope/vim-fugitive'
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
"Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-projectionist'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/' }
Plugin 'tpope/vim-surround'
Plugin 'nelstrom/vim-mac-classic-theme'
"Plugin 'gorodinskiy/vim-coloresque'
Plugin 'thoughtbot/vim-rspec'
"Plugin 'vim-airline/vim-airline'
Plugin 'kchmck/vim-coffee-script'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plugin 'airblade/vim-gitgutter' " Git + - Signs
Plugin 'pangloss/vim-javascript'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'slim-template/vim-slim.git'
Plugin 'mileszs/ack.vim'
Plugin 'rakr/vim-two-firewatch'
Plugin 'trevordmiller/nova-vim'
Plugin 'kaicataldo/material.vim'
Plugin 'szorfein/fromthehell.vim'
"Plugin 'morhetz/gruvbox'
Plugin 'crusoexia/vim-monokai'
Plugin 'Yggdroot/indentLine'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'ryanoasis/vim-devicons'
Plugin 'arcticicestudio/nord-vim'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'Rigellute/rigel'
Plugin 'joshdick/onedark.vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'eemed/sitruuna.vim'
Plugin 'fcpg/vim-fahrenheit'
Plugin 'notpratheek/vim-luna'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'ayu-theme/ayu-vim'
Plugin 'hzchirs/vim-material'
Plugin 'micke/vim-hybrid'
Plugin 'altercation/vim-colors-solarized'
Plugin 'connorholyday/vim-snazzy'
Plugin 'tpope/vim-haml'
Plugin 'rakr/vim-one'
Plugin 'dracula/vim'
"Plugin 'folke/tokyonight.nvim'
Plugin 'ghifarit53/tokyonight-vim'
Plugin 'haishanh/night-owl.vim'
"Plugin 'itchyny/lightline.vim'
Plugin 'mhinz/vim-startify'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'nvim-telescope/telescope-fzy-native.nvim'
Plugin 'kdheepak/lazygit.nvim'
Plugin 'lewis6991/gitsigns.nvim'
Plugin 'lifepillar/vim-gruvbox8'
Plugin 'kyazdani42/nvim-web-devicons' " for file icons
Plugin 'kyazdani42/nvim-tree.lua'
Plugin 'akinsho/bufferline.nvim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set tabstop=2
set shiftwidth=2
set expandtab
syntax enable

" For indentLine
"let g:indentLine_setColors = 1
"let g:indentLine_color_term = 239
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" END

" Hotline
"set background=dark
"colorscheme hotline
" END
"
" Tokyo Night Vim
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:lightline = {'colorscheme': 'tokyonight'}
colorscheme tokyonight
" END

" Tokyo Night NeoVim
"let g:tokyonight_style = 'storm'
"let g:tokyonight_italic_functions = 1
"let g:tokyonight_sidebars = ['qf', 'vista_kind', 'terminal', 'packer']
"let g:tokyonight_colors = {
"  \ 'hint': 'orange',
"  \ 'error': '#ff0000'
"\ }
"colorscheme tokyonight
"let g:lightline = {'colorscheme': 'tokyonight'}
" END

" Night Owl
"set termguicolors
"colorscheme night-owl
" END

" Firewatch Theme START
"set termguicolors
"set background=dark " or light if you prefer the light version
"let g:two_firewatch_italics=0
"colorscheme two-firewatch
"let g:airline_theme='twofirewatch' " if you have Airline installed and want the associated theme
" Firewatch Theme END

" OneDark Theme START
"let g:onedark_termcolors=256
"set termguicolors
"set background=dark
"colorscheme onedark
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
"let g:airline_theme='palenight'
""" END

" Gruvbox
"set termguicolors
"colorscheme gruvbox8
"set background=dark
"let g:airline_theme='gruvbox8'
" End

" Snazzy
"set termguicolors
"colorscheme snazzy
"let g:airline_theme='luna'
" END

"Nord
"set termguicolors
"colorscheme nord
"let g:airline_theme='nord'
"end

"Dracula
"set termguicolors
"colorscheme dracula
"let g:airline_theme='dracula'
"end

" Solarized Theme
"syntax enable
"set termguicolors
"set background=dark
"colorscheme solarized
"let g:airline_theme='luna'
" END

"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
"colorscheme solarized
"set background=dark
"let g:airline_theme='luna'
" End

" Material Theme
"set termguicolors
"set background=dark
"syntax enable
"colorscheme material
"let g:material_theme_style='darker'
"let g:airline_theme = 'material'
" END

" Monokai Theme
"colorscheme monokai
"let g:airline_theme='badcat'
" END

" PaperColor Theme
"set t_Co=256   " This is may or may not needed.
"set background=dark
"colorscheme PaperColor
"let g:airline_theme='papercolor'
" END

" Vim-one
"set termguicolors
"colorscheme one
"let g:one_allow_italics = 1
"set background=light
"let g:airline_theme='one'
" END

" Hybrid
"set termguicolors
"set background=dark
"colorscheme hybrid
"let g:airline_theme='hybrid'
" END

" Ayu
"set termguicolors
""let ayucolor='light'
"let ayucolor='dark'
"let ayucolor='mirage'
"colorscheme ayu
"let g:airline_theme='ayu'
"let g:airline_theme='ayu_dark'
" END

" Material
"set termguicolors
"let g:material_style='oceanic'
"set background=dark
"colorscheme vim-material
"let g:airline_theme='ayu'
"highlight clear jsThis
"highlight clear jsConditional
"highlight clear jsReturn
"highlight clear Comment
"hi Comment guifg=#585B69
"" END
"set termguicolors
"colorscheme rigel
"let g:rigel_airline = 1
"let g:airline_theme = 'rigel'

set cursorline
"highlight CursorLine cterm=underline ctermbg=NONE
"highlight CursorLine ctermbg=Black
"hi CursorLine ctermbg=234 cterm=NONE guifg=NONE guibg=#202330 gui=NONE
"hi LineNr ctermfg=grey guifg=#53545D
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
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
"set t_Co=256
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
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
