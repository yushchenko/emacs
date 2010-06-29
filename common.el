
(let ((cygwin "c:/cygwin/bin")
      (scripts "~/bin"))

    (setq exec-path (cons cygwin exec-path))
    (setenv "PATH" (concat scripts ";" cygwin ";" (getenv "PATH")))

    ;; NT-emacs assumes a Windows shell. Change to baaaaaash.
    (setq shell-file-name "bash")
    (setenv "SHELL" shell-file-name)
    (setq explicit-shell-file-name shell-file-name)

    ;; this removes unsightly ^M characters that would otherwise
    ;; appear in the output of java applications.
    (add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m))

(setq null-device "/dev/null")

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

;;; Text Editing ;;;
(setq-default tab-width 4)              
(setq-default indent-tabs-mode nil)     ; M-x untabify/tabify, whitespace-mode, whitespace-cleanup
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92))

;;; IDo ;;;
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; color theme >>>

(custom-set-faces
 '(default ((t (:inherit nil :stipple nil :background "SystemWindow" :foreground "SystemWindowText" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "Lucida Console")))))

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