;;; init.el ends here
(package-initialize)
(require 'package)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

; backup
(setq make-backup-files nil) ;; not create backup file
(setq auto-save-default nil) ;; not create backup .#*
(setq create-lockfiles nil) ;; not createlock file
(setq delete-auto-save-files t) ;; delete auto save file when finishing
(setq auto-save-list-file-prefix nil) ;; not create auto save file list file

; keybind
(global-set-key (kbd "C-h") 'delete-backward-char) ;; backspace -> ctrl+h
(global-set-key (kbd "M-g") 'goto-line) ;; goto-line -> alt+g
(global-set-key (kbd "M-r") 'replace-string) ;; replace-string -> alt+r
(global-set-key (kbd "C-x C-i") 'indent-region) ;; indent-region -> ctrl+x ctrl+i

; display
(setq inhibit-startup-message t) ;; not start up message
(display-time)
(line-number-mode 1)
(column-number-mode 1)
;;(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;;(set-scroll-bar-mode 'right)
(setq frame-title-format "%f") ;; display file full path on title
(require 'linum)
(global-linum-mode t)
(setq linum-format "%4d ")
;;(global-hl-line-mode 1) ;; current line colored
(show-paren-mode 1) ;; paren high light
;; window transparent. active/non-active(alpha value)
;;(add-to-list 'default-frame-alist '(alpha . (0.85 0.85)))
;; font type
;;(font-spec :family "Cica" :size 14)

; whitespace
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "#b14770")
(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; trim whitespace when saving
(setq gc-cons-threshold (* 10 gc-cons-threshold)) ;;; reduce GC
(setq message-log-max 10000) ;; log maximum
(setq history-length 1000) ;; history max
(savehist-mode 1) ;; mini buffer log

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (irony paradox))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; c++
(add-hook 'c++-mode-hook 'irony-mode)
(require 'autoinsert)

(require 'hl-line)
;;; hl-lineを無効にするメジャーモードを指定する
(defvar global-hl-line-timer-exclude-modes '(todotxt-mode))
(defun global-hl-line-timer-function ()
  (unless (memq major-mode global-hl-line-timer-exclude-modes)
    (global-hl-line-unhighlight-all)
    (let ((global-hl-line-mode t))
      (global-hl-line-highlight))))
(setq global-hl-line-timer
      (run-with-idle-timer 0.03 t 'global-hl-line-timer-function))
;; (cancel-timer global-hl-line-timer)
