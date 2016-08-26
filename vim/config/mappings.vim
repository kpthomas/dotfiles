" Copy current file path (plus line number, if asked) to system pasteboard.
map <silent> <leader>cp :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
map <silent> <leader>cP :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

" Toggle spell check
map <leader>ss :setlocal spell!<cr>

" Mapping for writing all files in a tab
cabbrev wt silent windo w

" Gracefully handle holding shift too long after : for common commands
cabbrev Q q
cabbrev Qa qa
cabbrev Tabe tabe
cabbrev Tabn tabn
cabbrev Tabo tabo
cabbrev W w
cabbrev Wa wa
cabbrev Wq wq
cabbrev Wt wt

" Make Y consistent with D and C.
map Y y$

" Indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

" kpthomas
imap jj <Esc>:w<CR>

cnoremap %% <C-R>=expand('%:h').'/'<cr>

nnoremap <space> za

nnoremap <C-H> <C-W>h
nnoremap <D-[> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <D-]> <C-W>l

nnoremap <CR> :noh<CR><CR>
nnoremap <F3> :noh<CR>

nnoremap <F5> :CommandTFlush<CR>
map <leader>f :CommandTFlush<CR>:CommandT<CR>
map <leader>gt :CommandTFlush<CR>:CommandT %%<CR>
map <space>pf :CommandTFlush<CR>:CommandT<CR>

" regreplop
" nmap <C-B> <Plug>ReplaceMotion
" nmap <C-B> <Plug>ReplaceLine
" vmap <C-B> <Plug>ReplaceVisual
