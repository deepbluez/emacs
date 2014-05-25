;; -*- coding: utf-8 -*-

;; 设置默认的载入路径
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/elisp")

;; 开启服务器模式
(server-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (obsidian)))
 '(custom-safe-themes (quote ("17a4e8ceb0320f07f4087c85ad4a452fc82d8b7b70d16eda8e3f4df138223399" "d2b1a25a5e2ed8815fe07a7ebf1b27e7095966bd0eb5afb8d0d1e85ef4809998" "" default)))
 '(safe-local-variable-values (quote ((encoding . utf-8))))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Yahei Mono" :foundry "outline" :slant normal :weight normal :height 98 :width normal)))))


;; ----------------------------------------------
;; 下面是按照不同功能分开加载的配置项
;; ----------------------------------------------

;; 载入定制的状态栏提示
(load "mode-line")
;; TODO:vcs-tip,selection-tip

;; 加载包管理器
(load "elpa")

;; 加载并配置手工管理的插件包
(load "plugins")
