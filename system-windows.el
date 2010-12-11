
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

(provide 'system-windows)