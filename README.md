# vim-mac-dictionary
 
[English](README.md) [한국어](README_kr.md)

A Vim plugin that helps you find words using Mac's dictionary app.

![demo](https://user-images.githubusercontent.com/1855714/48068751-02914480-e217-11e8-9264-5d1b55e0aba9.gif )

# Installation

* This plug-in is only available for MacOS.

## VimPlug

Place this in your .vimrc:

```viml
Plug 'johngrib/vim-mac-dictionary'
```

Then run the following in Vim:

```
:source %
```

```
:PlugInstall
```

## Select a dictionary to use

1. Launch the built-in dictionary app on your Mac.
2. Enter `command +,` to enter the setting screen.
3. Drag the mouse over the dictionary you want to use and put it on the **top line**.
    * Please be sure to set it because it will show only the search result of the dictionary in the top row.

![setting](https://user-images.githubusercontent.com/1855714/48068975-89462180-e217-11e8-9f01-a7d58ba690d8.png )

## How To Use

* Place the cursor on a word and type `: MacDictWord` to find the dictionary.
* type `: MacDictQuery` and then type the word you want to search for, it will find the dictionary.

You can register shortcuts in the following ways:

```viml
nnoremap <C-p> :MacDictWord<CR>
nnoremap <C-S-p> :MacDictWord<CR>
```

## Configuration

### Do not using formatted result

```viml
" shows the raw string from the dictionary
let g:vim_mac_dictionary_use_format = 0
```

### View in app

```viml
let g:vim_mac_dictionary_use_app = 1
```
