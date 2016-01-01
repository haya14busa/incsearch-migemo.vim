"=============================================================================
" FILE: plugin/incsearch/migemo.vim
" AUTHOR: haya14busa
" License: MIT license
"=============================================================================
scriptencoding utf-8
if expand('%:p') ==# expand('<sfile>:p')
  unlet! g:loaded_incsearch_migemo
endif
if exists('g:loaded_incsearch_migemo')
  finish
endif
let g:loaded_incsearch_migemo = 1
let s:save_cpo = &cpo
set cpo&vim

function! s:config(...) abort
  return incsearch#config#migemo#make(get(a:, 1, {}))
endfunction

noremap <silent><expr> <Plug>(incsearch-migemo-/)      incsearch#go(<SID>config({'command': '/'}))
noremap <silent><expr> <Plug>(incsearch-migemo-?)      incsearch#go(<SID>config({'command': '?'}))
noremap <silent><expr> <Plug>(incsearch-migemo-stay-/) incsearch#go(<SID>config({'command': '/', 'is_stay': 1}))

let &cpo = s:save_cpo
unlet s:save_cpo
" __END__
" vim: expandtab softtabstop=2 shiftwidth=2 foldmethod=marker
