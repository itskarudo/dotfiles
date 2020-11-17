syntax on
set number relativenumber                                                                                       
set nu rnu

set tabstop=2
set shiftwidth=2
set expandtab

imap jk <Esc>

" cursor thingy
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor+=i:blinkwait10
set guicursor+=i:blinkon1


" vim plug shit
call plug#begin('~/.config/nvim/plugged')
Plug 'sheerun/vim-polyglot' " Alot lol
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Autocompletion crap
Plug 'jiangmiao/auto-pairs' " Pairing shit
Plug 'preservim/nerdtree' " Nerd Tree POG
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'morhetz/gruvbox' " Gruvbox theme
Plug 'vim-airline/vim-airline' " Main airline
Plug 'vim-airline/vim-airline-themes' " themes lol
Plug 'christoomey/vim-tmux-navigator' " TMux integration
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'mattn/emmet-vim'
call plug#end()

" theme config
set background=dark
let g:airline_theme='gruvbox'

colorscheme gruvbox

" COC config
let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-snippets',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ 'coc-git',
  \ 'coc-python',
  \ 'coc-tsserver',
  \ 'coc-clangd'
  \]

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()


" NERDTree config
nmap <C-b> :NERDTreeToggle<CR>
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:webdevicons_enable_nerdtree = 1
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" gotos keymaps
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap emmet leader key
let g:user_emmet_leader_key='<C-x>'
