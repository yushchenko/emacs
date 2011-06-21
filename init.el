;; Valery Yushchenko's Emacs configuration
;;
;; C:\emacs\bin\runemacs.exe -q -l d:\home\projects\emacs\init.el
;;
;; /usr/share/applications/emacs23.desktop
;; Exec=/usr/bin/emacs23 -q -l /home/valery/projects/emacs/init.el %F

(setq user-full-name "Valery Yushchenko")
(setq user-mail-address "valery[at]yushchenko.name")


(setq current-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(add-to-list 'load-path current-dir)
(add-to-list 'load-path (concat current-dir "lisp"))


(require 'common)
(require 'utils)
(require 'programming)
(require 'projects)

