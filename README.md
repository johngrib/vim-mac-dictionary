# vim-mac-dictionary
 
[English](README.md) [한국어](README_kr.md)

A Vim plugin that helps you find words using Mac's dictionary app.

![dict](https://user-images.githubusercontent.com/1855714/48099708-c6d09c00-e263-11e8-8ffa-e929d3e04aa0.gif )

![dictk](https://user-images.githubusercontent.com/1855714/48100158-79edc500-e265-11e8-89e1-0a234c445fb5.gif)

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

![setting](https://user-images.githubusercontent.com/1855714/48071044-a4676000-e21c-11e8-8609-a8c33b58e28c.png )

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
