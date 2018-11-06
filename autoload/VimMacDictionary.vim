let s:BUFFER_NAME = '-VIM-MAC-DICTIONARY-'

function! s:open()

    split
    execute "silent edit " . s:BUFFER_NAME
    " vertical resize 80
    setlocal ft=vimmacdictionary
    let s:bufNumber = bufnr('%')
endfunction

let s:plugindir = expand('<sfile>:p:h:h')

function! s:isUseBuffer()
    if !exists('g:vim_mac_dictionary_use_buffer')
        return v:true
    endif
    return g:vim_mac_dictionary_use_buffer == 1
endfunction

function! s:isUseFormat()
    if !exists('g:vim_mac_dictionary_use_format')
        return v:true
    endif
    return g:vim_mac_dictionary_use_format == 1
endfunction

function! s:printBuffer(result)
    silent call s:open()
    silent call s:setLocalSetting()
    silent call setline(1, a:result)

    if s:isUseFormat()
        silent %s/\v\.\s(\S+)1\./.\r\1\r  1./g
        silent %s/\v(\S+\s*)(1\.)/\1\r  \2/g
        silent %s/\v(\d+\.)/\r  \1/g
        silent %s/\v(\D\.)/\1\r/g
        silent %s/\v\s?▸/\r    ▸/g
        silent %g/^\s*$/d
    endif

    silent normal! gg
    return
endfunction

function! VimMacDictionary#find(word)

    let l:result = system(s:plugindir . "/dictionary.swift " . a:word)

    if s:isUseBuffer()
        call s:printBuffer(l:result)
        return
    endif

    echo l:result
endfunction

function! s:setLocalSetting()

    setlocal bufhidden=wipe
    setlocal buftype=nofile
    setlocal buftype=nowrite
    setlocal noswapfile
    setlocal listchars=
    setlocal laststatus=2
    setlocal fileencodings=utf-8
    setlocal lazyredraw
    setlocal nofoldenable
    syntax on

    retab
endfunction

