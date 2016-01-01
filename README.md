incsearch-migemo.vim
====================

いんくさーち-みげも．ヴィム

Vim でローマ字によるインクリメンタル日本語検索

ヴぃむのけんさくはもっとベンリになる...!

![incsearch-migemo.gif](https://raw.githubusercontent.com/haya14busa/i/master/incsearch.vim/extensions/incsearch-migemo.gif)

### 依存
- https://github.com/haya14busa/incsearch.vim
- ([C/Migemo — KaoriYa](http://www.kaoriya.net/software/cmigemo/) && [Shougo/vimproc.vim](https://github.com/Shougo/vimproc.vim))
  or
  Kaoriya Vim の `migemo` コマンド

### インストール

[Neobundle](https://github.com/Shougo/neobundle.vim) / [Vundle](https://github.com/gmarik/Vundle.vim) / [vim-plug](https://github.com/junegunn/vim-plug)

```vim
NeoBundle 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch.vim'

NeoBundle 'haya14busa/incsearch-migemo.vim'
Plugin 'haya14busa/incsearch-migemo.vim'
Plug 'haya14busa/incsearch-migemo.vim'
```

[pathogen](https://github.com/tpope/vim-pathogen)

```
git clone https://github.com/haya14busa/incsearch.vim ~/.vim/bundle/incsearch.vim
git clone https://github.com/haya14busa/incsearch-migemo.vim ~/.vim/bundle/incsearch-migemo.vim
```

### 使い方

```vim
map m/  <Plug>(incsearch-migemo-/)
map m?  <Plug>(incsearch-migemo-?)
map mg/ <Plug>(incsearch-migemo-stay-/)
map mg? <Plug>(incsearch-migemo-stay-?)
```

### API
- `incsearch#config#migemo#converter()`: return converter function
- `incsearch#config#migemo#make()`: return default config
