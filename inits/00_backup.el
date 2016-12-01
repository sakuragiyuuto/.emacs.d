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
