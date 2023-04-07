" Debugging human map
let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_base_dir='/home/dboj/.vim/plugged/vimspector'
nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval
nmap <leader>dw :VimspectorWatch
nmap <leader>do :VimspectorShowOutput
" autocmd FileTye java nmap <leader>dd :CocCommand java.debug.vimspector.start<CR>
