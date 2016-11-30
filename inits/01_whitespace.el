;;; whitespace

;; 行末の空白を強調表示
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "#b14770")

;; 行末の空白を削除(保存時)
(add-hook 'before-save-hook 'delete-trailing-whitespace)