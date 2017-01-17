;;;
;;; window-frame
;;;

;; window
; メニューバーとツールバーとスクロールバーを消す
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

; タイトルバーにファイルのフルパスを表示
(setq frame-title-format "%f")

; 右から左に読む言語に対応させないことで描画高速化(ex.アラビア文字)
(setq-default bidi-display-reordering nil)

; ウィンドウを透明にする.アクティブウィンドウ/非アクティブウィンドウ(alphaの値で透明度を指定)
(add-to-list 'default-frame-alist '(alpha . (0.80 0.60)))

; 1行ずつスクロール
(setq scroll-conservatively 35
      scroll-margin 0
      scroll-step 1)
(setq comint-scroll-show-maximum-output t) ;; shell-mode

;; editor inside
; バッファの左側に行番号を表示する
(require 'linum)
(global-linum-mode t)
(setq linum-format "%4d ")

; 現在行に色をつける
(global-hl-line-mode 1)

; 釣合う括弧をハイライトする
(show-paren-mode 1)

;; Please set your themes directory to 'custom-theme-load-path
(add-to-list 'custom-theme-load-path
             (file-name-as-directory "~/.emacs.d/replace-colorthemes/dark-blue2-theme.el"))

;; load your favorite theme
(load-theme 'dark-blue2 t t)
(enable-theme 'dark-blue2)
