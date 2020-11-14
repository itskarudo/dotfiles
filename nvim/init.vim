syntax on
set number relativenumber                                                                                       
set nu rnu

set tabstop=2
set shiftwidth=2
set expandtab

imap ii <Esc>

" cursor thingy
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor+=i:blinkwait10
set guicursor+=i:blinkon1


" vim plug shit
call plug#begin('~/.config/nvim/plugged')
Plug 'sheerun/vim-polyglot' " Alot lol
Plug 'altercation/vim-colors-solarized' " Solarized colorscheme
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Autocompletion crap
Plug 'jiangmiao/auto-pairs' " Pairing shit
call plug#end()

" theme config
set background=dark

let g:solarized_termcolors=256
colorscheme solarized

" COC config
let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-git',
  \ 'coc-python',
  \ 'coc-clangd'
  \]
