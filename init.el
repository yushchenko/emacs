;; Valery Yushchenko's Emacs configuration
;;
;; .emacs
;; (add-to-list 'load-path "~/projects/emacs")
;; (require 'init)

(setq user-full-name "Valery Yushchenko")
(setq user-mail-address "valery[at]yushchenko.name")


(setq current-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(add-to-list 'load-path current-dir)
(add-to-list 'load-path (concat current-dir "lisp"))


(require 'common)
(require 'programming)
(require 'projects)

(provide 'init)