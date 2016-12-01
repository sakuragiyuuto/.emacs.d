;;; display

;; スタートアップメッセージを表示しない
(setq inhibit-startup-message t)

;; モードラインに時刻を表示する
(display-time)

;; モードラインに行番号・桁番号を表示する
(line-number-mode 1)
(column-number-mode 1)

;; メニューバーとツールバーとスクロールバーを消す
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; タイトルバーにファイルのフルパスを表示
(setq frame-title-format "%f")

;; バッファの左側に行番号を表示する
(require 'linum)
(global-linum-mode t)
(setq linum-format "%4d ")

;; 現在行に色をつける
(global-hl-line-mode 1)

;; 釣合う括弧をハイライトする
(show-paren-mode 1)

;;; 右から左に読む言語に対応させないことで描画高速化(ex.アラビア文字)
(setq-default bidi-display-reordering nil)

;; ウィンドウを透明にする.アクティブウィンドウ/非アクティブウィンドウ(alphaの値で透明度を指定)
(add-to-list 'default-frame-alist '(alpha . (0.85 0.85)))
