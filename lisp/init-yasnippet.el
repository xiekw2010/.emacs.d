(require-package 'yasnippet)

;; default TAB key is occupied by auto-complete
(global-set-key (kbd "C-c ; u") 'yas/expand)
;; default hotkey `C-c & C-s` is still valid
(global-set-key (kbd "C-c ; s") 'yas/insert-snippet)

(setq yas-snippet-dirs
      '("~/.emacs.d/misc/snippets"                 ;; personal snippets
        ; "/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
        ; "/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
        ; "/path/to/yasnippet/snippets"         ;; the default collection
        ))

(yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.

(provide 'init-yasnippet)
