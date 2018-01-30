; backup
;; *.~ のバックアップファイルを作らない
(setq make-backup-files nil)

;; .#* のバックアップファイルを作らない
(setq auto-save-default nil)

;; lockファイルを作らない
(setq create-lockfiles nil)

;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

;; 自動保存ファイルのリストファイルを作らない
(setq auto-save-list-file-prefix nil)


; keybind
;; backspace -> ctrl+h
(global-set-key (kbd "C-h") 'delete-backward-char)

;; goto-line -> alt+g
(define-key global-map (kbd "M-g") 'goto-line)

;; replace-string -> alt+r
(define-key global-map (kbd "M-r") 'replace-string)

;; indent-region -> ctrl+x ctrl+i
(define-key global-map (kbd "C-x C-i") 'indent-region)


;;; display
;; スタートアップメッセージを表示しない
(setq inhibit-startup-message t)

;; モードラインに時刻を表示する
(display-time)

;; モードラインに行番号・桁番号を表示する
(line-number-mode 1)
(column-number-mode 1)

;; メニューバーとツールバーとスクロールバーを消す
;;(menu-bar-mode -1)
(tool-bar-mode -1)
;;(scroll-bar-mode -1)

;;; スクロールバーを右側に表示する
;;(set-scroll-bar-mode 'right)

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

;; フォントタイプ
(font-spec :family "Cica" :size 14)

;;; whitespace
;; 行末の空白を強調表示
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "#b14770")

;; 行末の空白を削除(保存時)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;; GCを減らして軽くする
(setq gc-cons-threshold (* 10 gc-cons-threshold))

;;; ログの記録行数を増やす
(setq message-log-max 10000)

;;; 履歴をたくさん保存する
(setq history-length 1000)

;;; ミニバッファ履歴を次回Emacs起動時にも保存する
(savehist-mode 1)

;;;
(set-face-attribute 'default nil :height 120)
