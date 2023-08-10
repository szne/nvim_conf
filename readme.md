# szkk/nvim-conf

## 指針

- NvimをIDEのようにする
- プラグインは極力増やさない
- 始めたての自分が見てもわかるようにする

## 導入したプラグイン

### プラグインマネージャー

- lazy_nvim.lua

### システム

- persistence-nvim
    - 前回開いたセッションを復元できる
- toggleterm
    - vimからターミナルを開きやすくする
    - lazygitをnvim内で開くために使用

### ファイラ

- nvim-tree
    - ツリービューアー、何かと便利
    - fernと迷ったけどこっちの方が個人的に好み

### ツリーシッター

- nvim-treesitter
    - いい感じにハイライトしてくれるらしい
    - LSPとの連携とかいじりたい

### LSP他

- [https://zenn.dev/yuucu/articles/lazy_nvim_tuning]の.dotfileをそのまま使用したため理解不足
- nvim-lspconfig
- mason
- nvim-cmp

### 入力支援

- lexima
    - 括弧や""の入力を楽にしてくれる
    - 地味に{}を改行したときのインデントもつけてくれる

### 検索、移動

- nvim-telescope
    - 多機能検索プラグイン、ファイル検索やファイル内の文字列を検索できる。
- hop-nvim
    - EasyMotion-like plugin、キーストロークは後述のflash-nvimより多くなるけど見やすい
- flash-nvim
    - nvim標準の検索でマーカーをつけてくれる
    - そのほかにもfなどの機能も使いやすくしてくれる

### 表示

- nvim-colorizer
    - カラーコードに合った色を表示してくれる

### GIT

### UI

- alpha-nvim
    - nvim起動の画面をいじるやつ、かっこいい
- lualine
    - ステータスバーをいじるやつ
- barbar
    - タブ？を変更する
    - 正確にはバッファをタブのように使用するプラグインという認識
    - nvim-treeと合わせて直観的なキー操作ができるのでお気に入り
- indent-blankline-nvim
    - インデントを見やすくしてくれる

## 操作チートシート

### ファイラ、タブ操作

- <A-e> ファイラ:を開く、フォーカス
- <A-Left> 左のタブへ移動
- <A-Right> 右のタブへ移動
- <A-,> タブを左へ移動
- <A-.> タブを右へ移動
- <A-c> タブを閉じる

### GIT

- <leader>g Lazygitを開く

### ターミナル

- <A-t> terminalを開く

## 参考にしたサイト

- [https://coralpink.github.io/commentary/neovim/plugin/nvim-tree.html]
- [https://minerva.mamansoft.net/Notes/%F0%9F%97%83%EF%B8%8FNeovim%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3] 
- [https://zenn.dev/yuucu/articles/lazy_nvim_tuning]
