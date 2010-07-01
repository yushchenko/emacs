;; js2  >>>

(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(setq js2-bounce-indent-p t)

;; CSharp  >>>

(require 'csharp-mode)
(add-to-list 'auto-mode-alist '("\\.cs$" . csharp-mode))

;; Hmtl  >>>

(add-to-list 'auto-mode-alist '("\\.aspx$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.ascx$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.master$" . html-mode))

;; CMD  >>>

(autoload 'cmd-mode "cmd-mode" "CMD mode." t)
(setq auto-mode-alist (append '(("\\.\\(cmd\\|bat\\)$" . cmd-mode)) auto-mode-alist))


;; Python >>>
(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist (cons '("python" . python-mode)
                                   interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)

(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

;; Yaml >>>

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

;; Markdown >>>

(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))


(provide 'programming)