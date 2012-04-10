export LANG=ja_JP.UTF-8

##
## 履歴関連設定
##
## 履歴の保存先
HISTFILE=$HOME/.zsh-history
## メモリに展開する履歴の数
HISTSIZE=1000000
## 保存する履歴の数
SAVEHIST=1000000
## 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups
## ヒストリを共有
setopt share_history
## コマンドラインの先頭がスペースで始まる場合ヒストリに追加しない
setopt hist_ignore_space
## history (fc -l) コマンドをヒストリリストから取り除く。
setopt hist_no_store
## zsh の開始, 終了時刻をヒストリファイルに書き込む
setopt extended_history
## ヒストリを呼び出してから実行する間に一旦編集
setopt hist_verify
# N,P でhistory補完検索
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end


##
## 補完関連
##
## 補完機能の強化
autoload -U compinit
compinit
## 補完候補を詰めて表示
setopt list_packed
## 補完機能でbeep音をならさない
setopt nolistbeep
## 補完候補一覧でファイルの種別をマーク表示
setopt list_types
## 補完候補を一覧表示
setopt auto_list
## TAB で順に補完候補を切り替える
setopt auto_menu
## ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash
## --prefix=/usr などの = 以降も補完
setopt magic_equal_subst
## 補完候補のカーソル選択を有効に
zstyle ':completion:*:default' menu select=1
## 補完候補の色づけ
eval `dircolors`
export ZLS_COLORS=$LS_COLORS
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}


##
## その他
##
## スペルチェック
setopt correct
## cd 時に自動で push
setopt auto_pushd
## ディレクトリ名だけで cd
setopt auto_cd
## 同じディレクトリを pushd しない
setopt pushd_ignore_dups
## 内部コマンド jobs の出力をデフォルトで jobs -l にする
setopt long_list_jobs
## コアダンプサイズを制限
#limit coredumpsize 102400
## 出力の文字列末尾に改行コードが無い場合でも表示
unsetopt promptcr
## 色を使う
setopt prompt_subst
## ビープを鳴らさない
setopt nobeep
## サスペンド中のプロセスと同じコマンド名を実行した場合はリジューム
setopt auto_resume
## ファイル名で #, ~, ^ の 3 文字を正規表現として扱う
setopt extended_glob
## =command を command のパス名に展開する
setopt equals
## ファイル名の展開で辞書順ではなく数値的にソート
setopt numeric_glob_sort
## 出力時8ビットを通す
setopt print_eight_bit
## カッコの対応などを自動的に補完
setopt auto_param_keys
## {a-c} を a b c に展開する機能を使えるようにする
setopt brace_ccl
## Ctrl+S/Ctrl+Q によるフロー制御を使わないようにする
setopt NO_flow_control
## コマンドラインでも # 以降をコメントと見なす
setopt interactive_comments
## ファイル名の展開でディレクトリにマッチした場合末尾に / を付加する
setopt mark_dirs
## 最後のスラッシュを自動的に削除しない
setopt noautoremoveslash

## GIT用設定
export GIT=git@github.com:shibaookami

## PROMPT設定
PROMPT="%{[31m%}[%n@${HOST} : %/]%{[m%}
$ "
PROMPT2="%{[31m%}%_%%%{[m%} "
SPROMPT="%{[31m%}%r is correct? [n,y,a,e]:%{[m%} "

## local設定の読み込み
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
