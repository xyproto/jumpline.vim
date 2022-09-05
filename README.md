# Jumpline

An efficient keybinding for `ctrl-l` for ViM and NeoVim, for jumping to the top or to the bottom of a file, or to a specific line.

---

<p align="center"><img alt="logo" src="img/jumpline.svg"></p>

---

Press `ctrl-l` and then:

* Press `return` to alternate between jumping to the top of a file and to the bottom of a file.
* Type in a `1` (or `0`) to jump to the first line.
* Type in a number higher or equal to the number of lines to jump to the end.
* Type in a line number to jump to that specific line.

## Installation

If you use `vim-plug` (recommended), just add the `Plug` line between the begin and end statements.
The procedure is similar for `Vundle.vim`.

### vim-plug

    call plug#begin()
    Plug 'xyproto/jumpline.vim'
    call plug#end()

### Vundle.vim

    call vundle#begin()
    Plugin 'xyproto/jumpline.vim'
    call vundle#end()

## General info

License: [The Unlicense](https://choosealicense.com/licenses/unlicense/)
