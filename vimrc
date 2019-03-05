set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'
Plugin 'SirVer/ultisnips'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'Chiel92/vim-autoformat'
Plugin 'alvan/vim-closetag'
Plugin 'jiangmiao/auto-pairs'
Plugin 'https://github.com/suan/vim-instant-markdown.git'
Plugin 'https://github.com/greyblake/vim-preview.git'
Plugin 'https://github.com/mpetazzoni/autopreview.vim'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'flazz/vim-colorschemes'
Plugin 'https://github.com/felixhummel/setcolors.vim.git'
Plugin 'joshdick/onedark.vim'
Plugin 'w0rp/ale'
Plugin 'junegunn/gv.vim'
Plugin 'xuyuanp/nerdtree-git-plugin'

let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
let g:ale_fixers={
            \ '*':['remove_trailing_lines','trim_whitespace'],
            \ 'javascript':['eslint'],
            \ }
let g:ale_fix_on_save =  1
let g:ale_completion_enabled = 1

call vundle#end()

colorscheme onedark

filetype plugin indent on

syntax on
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <F3> :Autoformat<CR>
map <Enter> o<ESC>

map<C-n> :NERDTreeToggle<CR>

au BufWrite * :Autoformat

set splitbelow
set splitright
set number
set tabstop =4
set shiftwidth=4
set expandtab
set clipboard=unnamedplus

packloadall
silent! helptags ALL
