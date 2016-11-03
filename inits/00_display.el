;;; display

;;; モードラインに時刻を表示する
(display-time)

;;; モードラインに行番号・桁番号を表示する
(line-number-mode 1)
(column-number-mode 1)

;;; メニューバーとツールバーとスクロールバーを消す
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; タイトルバーにファイルのフルパスを表示
(setq frame-title-format "%f")

;; バッファの左側に行番号を表示する
(global-nlinum-mode t)
(set-face-attribute 'linum nil
                    :foreground "#BBB"
                    :height 0.9)
(setq nlinum-format "%4d"); 5 桁分の表示領域を確保する

;;; 現在行に色をつける
(global-hl-line-mode 1)

;;; 釣合う括弧をハイライトする
(show-paren-mode 1)