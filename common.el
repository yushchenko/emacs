(cond ((string= "gnu/linux" system-type) (require 'system-linux))
      ((string= "windows-nt" system-type) (require 'system-windows))
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

;;; IDo >>>

(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; smex >>

(require 'smex)
(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


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

;; Autocomplete
(add-to-list 'load-path (concat current-dir "lisp/auto-complete"))
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (concat current-dir "lisp/auto-complete/dict"))
(ac-config-default)

;; Synonym
(setq *synonym-api-key* "46e35107fb394f704ed7b0f620ea56fb")
(require 'synonym)


(provide 'common)