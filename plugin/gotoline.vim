"============================================================================
"File:        gotoline.vim
"Description: Vim plugin for the ultimate keybinding for ctrl-l.
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"
"============================================================================

if exists('g:loaded_gotoline_plugin') || &compatible
    finish
endif
let g:loaded_gotoline_plugin = 1

" Jump to top or bottom, line in o
function s:GotoLine()
    let message = "error"
    let lineNumber = input('Go to line: ')
    " Replace 0 with 1
    if lineNumber == "0"
        let lineNumber = "1"
    endif
    if lineNumber =~# '^\d\+$' " number check
        " Go to the given line number
        call cursor(lineNumber, 1)
        if lineNumber == "1"
            let message = "Top"
        elseif str2nr(lineNumber) >= line("$")
            let message = "Bottom"
        else
            let message = "Line " . lineNumber
        endif
    elseif line(".") == 1
        " Jump down
        call feedkeys('G')
        let message = "Bottom"
    else
        " Jump up
        call feedkeys('gg')
        let message = "Top"
    endif
    " Output a message and clear the status field
    redraw
    echo message
endfunction

nmap <silent> <c-l> :call s:GotoLine()<cr>