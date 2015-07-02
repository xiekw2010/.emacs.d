(require-package 'projectile)
(require-package 'neotree)

(require 'projectile)
(require 'neotree)

(when neo-persist-show
  (add-hook 'popwin:before-popup-hook
    (lambda () (setq neo-persist-show nil)))
  (add-hook 'popwin:after-popup-hook
    (lambda () (setq neo-persist-show t))))

(setq projectile-switch-project-action 'neotree-projectile-action)

(defun neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (projectile-project-root))
      (file-name (buffer-file-name)))
    (if project-dir
        (progn
          (neotree-dir project-dir)
          (neotree-find file-name))
      (message "Could not find git project root."))))
  
(global-set-key (kbd "C-x p") 'neotree-project-dir)
; (global-set-key (kbd "C-x b") 'neotree-project-dir)

(provide 'init-projectile)