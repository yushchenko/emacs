
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

;; color theme >>>
(custom-set-faces
'(default ((t (:inherit nil :stipple nil :background "SystemWindow" :foreground "SystemWindowText" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "Lucida Console")))))

;; Dired
(setq ls-lisp-dirs-first t)
(setq ls-lisp-verbosity '())            ;not show user and group
(setq ls-lisp-use-localized-time-format t)

;; checkout file making buffer writable
(defun set-buffer-file-writable ()
  "Remove readonly attirbute from currently edited file"
  (interactive)
  (let ((tf-exe "c:/Program Files/Microsoft Visual Studio 10.0/Common7/IDE/tf.exe"))
    (call-process tf-exe nil nil nil "checkout" (buffer-file-name))
    (toggle-read-only nil)))

(global-set-key "\C-x\C-q" 'set-buffer-file-writable)

;;
;; Programming specific for Windows
;; 

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


(provide 'system-windows)