# Jumpline

![logo](img/jumpline.svg)

A pretty good keybinding for `ctrl-l` for ViM and NeoVim.

* Press `ctrl-l` and then `return` to alternate between jumping to the top of a file and to the bottom of a file.
* Press `ctrl-l` and type `0` or `1` to jump to the first line.
* Press `ctrl-l` and type a line number to jump to that line.
* Press `ctrl-l` and type a line number after the end of the file to jump to the end of the file.

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
