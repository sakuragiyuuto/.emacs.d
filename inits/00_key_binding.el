;;; valid
;; backspace -> ctrl+h
(global-set-key (kbd "C-h") 'delete-backward-char)

;; goto-line -> alt+g
(define-key global-map (kbd "M-g") 'goto-line)

;; replace-string -> alt+r
(define-key global-map (kbd "M-r") 'replace-string)

;; indent-region -> ctrl+x ctrl+i
(define-key global-map (kbd "C-x C-i") 'indent-region)


;;; invalid
;; globalなC-zを無効化
(global-unset-key "\C-z")
