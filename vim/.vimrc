
"-----------------------------------------------------------------------------

set number"行番号の表示
"set autoindent"=キーでのインデント
"set tabstop=2"タブキー時のインデント
"set shiftwidth=2"オートインデント時のインデント
set hlsearch"検索時にマッチをハイライト
set completefunc=true"入力の補完
set encoding=utf-8
set fileencodings=utf-8,cp932,iso-2022-jp,euc-jp,sjis"読み込み時にどのコードとして読むかを順に選択
set omnifunc=javascriptcomplete#CompleteJS"ctrl+X ctrl+Oでオムニ補完
set cursorline"編集行にアンダーライン

"let loaded_matchparen = 1"括弧のハイライトをやめる

"set DoMatchParen"括弧のハイライトのon offのコマンドライン。重複するとエラー
"set NoMatchParen


"set spell"スペルチェックon
"set spelllang=en,cjk"日本語を除外
"set nospell"スペルチェックやっぱりOFF

"colorscheme default

hi clear

"test from here

"hi Conceal	ctermfg=Blue
"hi javaScriptCommentSkip	ctermfg=Blue
"hi Normal	ctermfg=Blue

"test to here

"カッコの補完
"https://qiita.com/shingargle/items/dd1b5510a0685837504a
"inoremap { {}<Left>
"inoremap {<Enter> {}<Left><CR><ESC><S-o>
"inoremap ( ()<ESC>i
"inoremap (<Enter> ()<Left><CR><ESC><S-o>


"let g:molokai_original = 1"~/.vim/colors/molokai.vimにgithubからdlしたもののon。gvim用。
"let g:molokai_original = 0

hi Ignore			ctermfg=Black	ctermbg=Red

hi Normal			ctermfg=Gray	ctermbg=Black
hi CursorLine	cterm=bold	ctermbg=DarkBlue"カーソルがいる行。最初はnormal-modeだから青
hi CursorColumn	cterm=bold	ctermfg=White	ctermbg=DarkBlue"不明	

hi javaScriptLineComment	ctermfg=Black	ctermbg=Cyan
hi javaScriptCommentSkip	ctermfg=Black	ctermbg=Cyan
hi javaScriptComment		ctermfg=Black	ctermbg=Cyan


hi Pmenu			ctermfg=White ctermbg=Black
hi PmenuSel			ctermfg=White ctermbg=Magenta

hi javaScriptStringD 	ctermfg=White
hi javaScriptStringS 	ctermfg=White
hi javaScriptValue 	ctermfg=White
hi javaScriptBoolean 	ctermfg=White
hi javaScriptNull 	ctermfg=White

hi javaScriptParens 	ctermfg=Magenta	"for,()
hi javaScriptBraces 	ctermfg=Magenta	"{

hi javascriptIdentifier		ctermfg=DarkGreen	"var,this
hi javaScriptFunction 		ctermfg=DarkGreen
hi javaScriptConditional	ctermfg=DarkGreen	"if
hi javaScriptRepeat		ctermfg=DarkGreen	"for
hi javaScriptOperator		ctermfg=DarkGreen	"new
hi javaScriptType		ctermfg=DarkGreen	"Array...'new Array()'のArrayの部分

hi javaScriptComment		ctermfg=Cyan	ctermbg=Black		cterm=reverse,bold
"hi javaScriptCommentLine	ctermfg=Cyan	ctermbg=Gray		"cterm=reverse

hi javaScript		ctermfg=Gray



"-----------------------------------------------------------------------------

"command mode
":SyntaxInfoでカーソル位置の文字列のグループを教えてくれる
"setsumei ... tsukaumaeni ka-soruwo mojinoueni oitene
function! s:get_syn_id(transparent)
  let synid = synID(line("."), col("."), 1)
  if a:transparent
    return synIDtrans(synid)
  else
    return synid
  endif
endfunction
function! s:get_syn_attr(synid)
  let name = synIDattr(a:synid, "name")
  let ctermfg = synIDattr(a:synid, "fg", "cterm")
  let ctermbg = synIDattr(a:synid, "bg", "cterm")
  let guifg = synIDattr(a:synid, "fg", "gui")
  let guibg = synIDattr(a:synid, "bg", "gui")
  return {
        \ "name": name,
        \ "ctermfg": ctermfg,
        \ "ctermbg": ctermbg,
        \ "guifg": guifg,
        \ "guibg": guibg}
endfunction
function! s:get_syn_info()
  let baseSyn = s:get_syn_attr(s:get_syn_id(0))
  echo "name: " . baseSyn.name .
        \ " ctermfg: " . baseSyn.ctermfg .
        \ " ctermbg: " . baseSyn.ctermbg .
        \ " guifg: " . baseSyn.guifg .
        \ " guibg: " . baseSyn.guibg
  let linkedSyn = s:get_syn_attr(s:get_syn_id(1))
  echo "link to"
  echo "name: " . linkedSyn.name .
        \ " ctermfg: " . linkedSyn.ctermfg .
        \ " ctermbg: " . linkedSyn.ctermbg .
        \ " guifg: " . linkedSyn.guifg .
        \ " guibg: " . linkedSyn.guibg
endfunction
command! SyntaxInfo call s:get_syn_info()

"written by ?

"-----------------------------------------------------------------------------

