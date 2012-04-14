" http://mirnazim.org/writings/vim-plugins-i-use/
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
autocmd BufRead *.vala,*.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala,*.vapi setfiletype vala
let g:tagbar_ctags_bin = "anjuta-tags"
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType vala setlocal ts=4 sts=4 sw=4 noexpandtab
setlocal cindent
set makeprg=./waf\ build
nmap <C-F11> :make<CR>
set incsearch
set hlsearch

" Tagbar
let g:tagbar_usearrows = 1
nmap <F8> :TagbarToggle<CR>

" Command-T
let g:CommandTMaxHeight = 15
set wildignore+=*.o,*.obj,.git,*.pyc
noremap <leader>o :CommandT<CR>
