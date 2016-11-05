;; -*- encoding: utf-8 -*-

(require 'cl)
(require 'package)

(setq package-archives
      '(
	("gnu"   . "http://elpa.zilongshanren.com/gnu/")
	("melpa" . "http://elpa.zilongshanren.com/melpa/")
	("melpa-stable" . "http://elpa.zilongshanren.com/melpa-stable/")
	("marmalade" . "http://elpa.zilongshanren.com/marmalade/")
	("org" . "http://elpa.zilongshanren.com/org/")
	))

(package-initialize)


;; 启用 yasnippet
(yas-global-mode 1)

;; 启用 TabBar
(tabbar-mode t)
(load "elpa-tabbar-extras")
;; 绑定 M-j 和 M-k 为切换标签按键
(global-set-key [(meta j)] 'tabbar-backward)
(global-set-key [(meta k)] 'tabbar-forward)


;; 设置 markdown 的默认转换器。要求系统中安装 pandoc
;; 设置语法高亮模式为 pygments，与 bitbucket.org 兼容
(setq markdown-command "pandoc -f markdown -t html -s --highlight-style pygments")

;; 启动 recent-file 插件
(require 'recentf)
(load "elpa-recentf-extras")
(recentf-mode 1)
(setq recentf-max-menu-items 25)
;; 绑定 C-x C-r 到打开历史记录清单
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
(run-at-time nil (* 5 60) 'recentf-save-list)
