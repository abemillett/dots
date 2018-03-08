" Pathogen
execute pathogen#infect('~/.config/nvim/bundle/{}')



" allow project-specific vim configs
set exrc
set secure



" encoding
set encoding=utf-8



" no backups
set nobackup
" also no swap (making the assumption there is plenty of memory)
set noswapfile



" status line
set laststatus=2
set ruler



" show leader key press
set showcmd




" leader key
let mapleader=","



" always substitute on all lines by default
set gdefault



" auto reload files when they change on disk
set autoread



" alternative to esc key
inoremap ;; <esc>



" colorscheme
syntax enable
colorscheme term



" line wrapping
" TODO: soft line navigation
set nowrap



" start scrolling when 10 lines away from top/bottom
set scrolloff=10



" line numbering
set number
set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber



" word separators that are good for BEM syntax
set iskeyword+=-
set iskeyword+=_



" search
set hlsearch

"" TODO project search
"" use syntax ':// query'



" tab settings
filetype plugin indent on
set tabstop=2		" show existing tab with 2 spaces width
set shiftwidth=2	" when indenting with '>', use 2 spaces width
" set expandtab		" soft tabs
set noexpandtab   " hard tabs



" file explorer
map - :RangerNewTab<cr>



" compile/run
set makeprg=g++\ -o\ %<\ %
noremap <Leader>m :make!<cr>



" write files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %



" ALE
" (replaces vim-autoformat and syntastic)
let g:ale_fix_on_save = 0

