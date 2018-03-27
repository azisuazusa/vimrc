" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme one
let NERDTreeMapActivateNode='l'
let g:vue_disable_pre_processors=1
"let g:javascript_plugin_jsdoc=1
"let g:javascript_plugin_ngdoc=1
"let g:javascript_plugin_flow=1
let g:jsx_ext_required=1
let g:jsx_pragma_required=1
let g:xml_syntax_folding=1
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=white
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=lightgrey
" show existing tab with 4 spaces width
set tabstop=4
set conceallevel=0
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
set number
set relativenumber
autocmd BufWinEnter * NERDTreeMirror
hi Normal guibg=NONE ctermbg=NONE
