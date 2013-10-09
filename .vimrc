
set nocompatible 
au BufNewFile,BufRead *.vs,*.fs,*.frag,*.vert,*.fp,*.vp,*.glsl setf glsl 
syntax enable

" Syntax for multiple tag files are
" set tags=/my/dir1/tags, /my/dir2/tags
set tags=tags;$HOME/.vim/tags/ "recursively searches directory for 'tags' file

" TagList Plugin Configuration
let Tlist_Ctags_Cmd='/usr/bin/ctags' " point taglist to ctags
let Tlist_GainFocus_On_ToggleOpen = 1      " Focus on the taglist when its toggled
let Tlist_Close_On_Select = 1              " Close when something's selected
let Tlist_Use_Right_Window = 1             " Project uses the left window
let Tlist_File_Fold_Auto_Close = 1         " Close folds for inactive files

set noautoindent
set noai
set nocindent 
set sw=4
set cindent shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4

set nocindent
set noautoindent
set noai
autocmd FileType javascript set sw=2
autocmd FileType javascript set cindent shiftwidth=2
autocmd FileType javascript set tabstop=2
autocmd FileType javascript set softtabstop=2
autocmd FileType c set sw=2
autocmd FileType c set cindent shiftwidth=2
autocmd FileType c set tabstop=2
autocmd FileType c set softtabstop=2
autocmd FileType cpp set sw=2
autocmd FileType cpp set cindent shiftwidth=2
autocmd FileType cpp set tabstop=2
autocmd FileType cpp set softtabstop=2
autocmd FileType jabbascript set sw=2
autocmd FileType jabbascript set cindent shiftwidth=2
autocmd FileType jabbascript set tabstop=2
autocmd FileType jabbascript set softtabstop=2
autocmd FileType glsl set sw=2
autocmd FileType glsl set cindent shiftwidth=2
autocmd FileType glsl set tabstop=2
autocmd FileType glsl set softtabstop=2


if has("gui_macvim")
    colorscheme pablo
    inoremap <A-F> <ESC>:bp<CR>
    inoremap <A-J> <ESC>:bn<CR>
    set guioptions-=T
    set transparency=10
endif

set backupdir=~/tmp
set noswapfile
"source vimrc/vimrc
autocmd FileType json set sw=2
autocmd FileType json set cindent shiftwidth=2
autocmd FileType json set tabstop=2
autocmd FileType json set softtabstop=2
autocmd FileType jade set sw=2
autocmd FileType jade set cindent shiftwidth=2
autocmd FileType jade set tabstop=2
autocmd FileType jade set softtabstop=2
autocmd FileType rst set sw=3
autocmd FileType rst set cindent shiftwidth=3
autocmd FileType rst set tabstop=3
autocmd FileType rst set softtabstop=3

autocmd FileType coffee set sw=4
autocmd FileType coffee set cindent shiftwidth=4
autocmd FileType coffee set tabstop=4
autocmd FileType coffee set softtabstop=4

"inoremap zj {}<Left>
"inoremap zk []<Left>
"inoremap zl ()<Left>
"inoremap zh function() {}<Left><Left><Left><Left>

nnoremap <Leader>/ :NERDTree<CR>

" let g:Powerline_symbols='fancy'
" let g:Powerline_theme='skwp'
" let g:Powerline_colorscheme='skwp'
" call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')

map <F1> :vertical wincmd f<CR>

"let g:syntastic_always_populate_loc_list=1
let g:syntastic_javascript_checkers=['jsl']
let g:syntastic_html_checkers=[]
execute pathogen#infect()
