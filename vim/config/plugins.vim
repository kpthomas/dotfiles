" Abolish
cabbrev S Subvert
cabbrev %S %Subvert

" Blockle
let g:blockle_mapping = '<leader>rb'

" CtrlP
let g:ctrlp_max_height=20
let g:ctrlp_match_window_reversed=0
let g:ctrlp_use_caching=0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
map <C-P>     :CtrlPMRU<CR>
map <leader>b :CtrlPBuffer<CR>
map <leader>e :e#<CR>

" Easytags
set tags=./tags
let g:easytags_auto_highlight = 0
let g:easytags_async = 1
let g:easytags_dynamic_files = 1

" Indent Guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi link IndentGuidesOdd Normal
autocmd VimEnter,Colorscheme * :hi link IndentGuidesEven CursorLine

" Indexed Search
let g:indexed_search_show_index_mappings = 0

" Gundo
nnoremap <leader>u :GundoToggle<CR>

" Markdown
let g:vim_markdown_folding_disabled=1

" NERDCommenter
let NERDSpaceDelims = 1
map <leader>/ <plug>NERDCommenterToggle

" NERDTree
map \ :NERDTreeToggle<CR>
map \| :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeRespectWildIgnore=1

" Rust syntax
let g:rust_recommended_style=0

" Splitjoin
nmap <leader>j :SplitjoinJoin<CR>
nmap <leader>s :SplitjoinSplit<CR>

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_javascript_jshint_args = '--config '.expand('~/.jshintrc')

" Tagbar
map <leader>l :TagbarToggle<CR>

" TagList
if filereadable("/usr/local/bin/ctags")
  let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
endif

" ZoomWin
map <leader>z :ZoomWin<CR>
