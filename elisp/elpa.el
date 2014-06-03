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

;; 设置 markdown 的默认转换器。要求系统中安装 pandoc
;; 设置语法高亮模式为 pygments，与 bitbucket.org 兼容
(setq markdown-command "pandoc -f markdown -t html -s --highlight-style pygments")
