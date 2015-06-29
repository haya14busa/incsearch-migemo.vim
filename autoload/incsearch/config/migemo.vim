"=============================================================================
" FILE: autoload/incsearch/config/migemo.vim
" AUTHOR: haya14busa
" License: MIT license
"=============================================================================
scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:V = vital#of('incsearch_migemo')
let s:Migemo = s:V.import('Migemo.Interactive')

function! incsearch#config#migemo#converter() abort
  return s:Migemo.generate_regexp
endfunction

function! incsearch#config#migemo#make(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'converters': [incsearch#config#migemo#converter()]
  \ }), get(a:, 1, {}))
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
" __END__
" vim: expandtab softtabstop=2 shiftwidth=2 foldmethod=marker
