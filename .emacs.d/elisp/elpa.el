;; -*- encoding: utf-8 -*-

(require 'cl)
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)


;; 启用 yasnippet
(yas-global-mode 1)

;; 启用 TabBar
(tabbar-mode t)
(global-set-key (kbd "M-N") 'tabbar-forward)
(global-set-key (kbd "M-P") 'tabbar-backward)
