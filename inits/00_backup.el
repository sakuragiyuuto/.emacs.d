; backup

;; *.~ のバックアップファイルを作らない
(setq make-backup-files nil)

;; .#* のバックアップファイルを作らない
(setq auto-save-default nil)

;; 自動保存ファイルのリストファイルを無効にする
(setq auto-save-list-file-prefix nil)

;; lockファイルを作らない
(setq create-lockfiles nil)

;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

;; 自動保存ファイルのリストファイルを作らない
(setq auto-save-list-file-prefix nil)
