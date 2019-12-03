"show status line
set laststatus=2

"show tab complete in menu
set wildmenu

"line unber cursor line
set cursorline

"show line numbers
set number

"shows line numbers as relative
set relativenumber

"put all swap files in same place
set directory=$HOME/.vim/swp//

set autoindent
set indentexpr=off
set expandtab
set tabstop=2
set clipboard=unnamed

set sw=4
set textwidth=80
set nohls
set noshowmatch
syntax enable
setlocal spell spelllang=en_us
set nospell
set background=dark
autocmd VimEnter * set vb t_vb=

vmap '' :w !pbcopy<CR><CR>

" vim-plug
call plug#begin('~/.vim/plugged')

" plugin section
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
Plug 'haishanh/night-owl.vim'
Plug 'itchyny/lightline.vim'

" end vim-plug
call plug#end()

if !has('gui_running')
    set t_Co=256
endif


