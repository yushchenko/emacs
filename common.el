;; (require 'cl)
;; (defun maybe-load (file)
;;   "If we can find file on the load-path, load it and return t, otherwise nil"
;;   (interactive "sFile: ")
;;   (load file t t nil))

;; ;;; OS specific ;;;
;; (let ((hostname (downcase system-name))
;; ;      (systype  (downcase (symbol-name system-type))))
;;       (systype "gnu/linux"))

;;   (cond ((string= "windowsnt" system-type)
;;          (maybe-load (concat "system-windows")))
;;         ((string= "gnu/linux" system-type)
;;          (maybe-load (concat "system-linux")))
;; )

(cond ((string= "gnu/linux" system-type) (require 'system-linux))
      ((string= "windowsnt" system-type) (require 'system-windows))
)

;;; UI ;;;
(setq frame-title-format (list "%f"))   ;frame title shows file name
(setq inhibit-splash-screen t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(display-time-mode 1)
(column-number-mode 1)
(setq scroll-step 1)

(setq blink-cursor-mode nil)
(setq-default truncate-lines t)         ;don't wrap long lines
(setq make-backup-files nil)            ;prevent backup file creation
(setq history-delete-duplicates t)      ;avoid duplicates in history

;;; Text Editing ;;;
(setq-default tab-width 4)              
(setq-default indent-tabs-mode nil)     ; M-x untabify/tabify, whitespace-mode, whitespace-cleanup
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92))

;;; IDo ;;;
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; color theme >>>

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-twilight)))

;; Dired set up
(setq ls-lisp-dirs-first t)
(setq ls-lisp-verbosity '())            ;not show user and group
(setq ls-lisp-use-localized-time-format t)

(add-hook 'dired-mode-hook
 (lambda ()
  (define-key dired-mode-map (kbd "<return>")
    'dired-find-alternate-file)
  (define-key dired-mode-map (kbd "^")
    (lambda () (interactive) (find-alternate-file "..")))))

(put 'dired-find-alternate-file 'disabled nil)

(setq hl-line-face '((t (:background "#27292A"))))
(add-hook 'dired-mode-hook (lambda () (hl-line-mode 1)))

;; Org mode
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(provide 'common)