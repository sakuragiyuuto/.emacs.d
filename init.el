;; elispディレクトリの読み込み設定をしてない場合は下記を記述
(add-to-list 'load-path "~/.emacs.d/elisp")

(require 'init-loader)
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/inits/")
