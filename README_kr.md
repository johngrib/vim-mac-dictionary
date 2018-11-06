# vim-mac-dictionary

[English](README.md) [한국어](README_kr.md)

Mac의 사전 앱을 Vim 안에서 사용할 수 있습니다.

![demo](https://user-images.githubusercontent.com/1855714/48068751-02914480-e217-11e8-9264-5d1b55e0aba9.gif )

# Installation

* 이 플러그인은 Mac의 사전 앱을 사용하기 때문에 Mac에서만 사용할 수 있습니다.

## VimPlug

`.vimrc` 에 다음과 같이 플러그인 정의를 추가하세요.

```viml
Plug 'johngrib/vim-mac-dictionary'
```

그리고 .vimrc 파일을 다시 읽어들인 다음,

```viml
:source %
```

플러그인을 설치하세요.

```viml
:PlugInstall
```

## 사용할 사전 설정하기

1. Mac에서 기본으로 제공하는 사전 앱을 실행합니다.
2. `command + ,`를 입력해 설정 화면으로 들어갑니다.
3. 사용할 사전을 마우스로 드래그하여 **제일 윗줄**로 올려줍니다.
    * 제일 윗줄에 있는 사전의 검색 결과만 보여주기 때문에 반드시 설정해주세요.
    * 저는 "뉴에이스 영한사전/뉴에이스 한영사전 (한국어-영어)"를 선택해 사용하고 있습니다.

![setting](https://user-images.githubusercontent.com/1855714/48068975-89462180-e217-11e8-9f01-a7d58ba690d8.png )

## How To Use

* 단어 위에 커서를 놓고, `:MacDictWord`를 입력하면 사전을 찾아줍니다.
* `:MacDictQuery`를 입력한 다음 검색하고 싶은 단어를 입력해주면 사전을 찾아줍니다.

다음 방법으로 단축키를 등록할 수 있습니다.

```viml
nnoremap <C-p> :MacDictWord<CR> " ctrl+p 로 커서가 있는 곳의 단어를 사전에서 찾습니다
nnoremap <C-S-p> :MacDictWord<CR> "ctrl+shift+p 로 검색하고 싶은 단어를 입력합니다
```

## Configuration

### 사전 내용 포매팅 설정

다음과 같이 설정하면 포매팅을 하지 않고 사전에서 가져온 그대로 보여줍니다.

```viml
let g:vim_mac_dictionary_use_format = 0
```

### 앱으로 보기 설정

다음과 같이 설정하면 사전을 찾은 결과를 Vim으로 보지 않고 사전 앱에서 보게 됩니다.

```viml
let g:vim_mac_dictionary_use_app = 1
```

