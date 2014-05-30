;; -*- encoding: utf-8 -*-

;; 按键绑定设置，所有与默认值不同的按键设置均在此文件中统一配置。

;; 将 C-z 绑定为前缀按键，在 Windows 中不需要自动最小化
(define-prefix-command 'ctl-z-map)
(global-set-key (kbd "C-z") 'ctl-z-map)

;; tabbar 按键绑定
;; 上一个/下一个标签页(默认是 C-c C-left 和 C-c C-right 太难按了)
(global-set-key (kbd "M-N") 'tabbar-forward)
(global-set-key (kbd "M-P") 'tabbar-backward)

;; 在 lisp 模式中，将F5绑定为执行当前缓冲或选区（若选中了文本）
(defun eval-buffer-or-region ()
   "若存在选区则运行选区，否则运行当前文件"
   (interactive)
   (if (region-active-p)
       (eval-region)
     (eval-buffer)
   ))
(dolist (hook (list
	       'emacs-lisp-mode-hook
	       'lisp-interactive-mode-hook))
  (add-hook hook
	    (lambda ()
	      (local-set-key (kbd "<f5>") 'eval-buffer-or-region)
	      )))

;; 按 F12 会调出交互性的 Lisp Shell - IELM
(global-set-key (kbd "<f12>") 'ielm)