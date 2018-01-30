(cond ((eq system-type 'windows-nt)
       (setq ps-print-color-p t
             ps-lpr-command "C:/Program Files/gs/gs9.16/bin/gswin64c.exe"
             ps-multibyte-buffer 'non-latin-printer
             ps-lpr-switches '("-sDEVICE=mswinpr2" "-dNOPAUSE" "-dBATCH" "-dWINKANJI")
             printer-name nil
             ps-printer-name nil
             ps-printer-name-option nil
             ps-print-header nil          ; ヘッダの非表示
             )
       ))
