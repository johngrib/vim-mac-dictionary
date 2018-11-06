command! MacDictWord :silent! call VimMacDictionary#find(expand('<cword>'))<CR>
command! MacDictQuery :silent! call VimMacDictionary#find(input('Enter one word to search: '))<CR>
