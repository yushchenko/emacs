;; checkout file making buffer writable
(defun set-buffer-file-writable ()
  "Remove readonly attirbute from currently edited file"
  (interactive)
  (let ((tf-exe "c:/Program Files/Microsoft Visual Studio 10.0/Common7/IDE/tf.exe"))
    (call-process tf-exe nil nil nil "checkout" (buffer-file-name))
    (toggle-read-only nil)))

(global-set-key "\C-x\C-q" 'set-buffer-file-writable)

(provide 'utils)