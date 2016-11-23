;; -*- coding: utf-8 -*-

;; 设置默认的载入路径

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/elisp")

;; 开启服务器模式
(server-mode 1)

;; 关掉初始画面
(setq inhibit-startup-message t)


;; ----------------------------------------------
;; 下面是按照不同功能分开加载的配置项
;; ----------------------------------------------

;; 载入常规配置项
(load "general-config")

;; 载入定制的状态栏提示
(load "mode-line")
;; TODO:vcs-tip,selection-tip

;; 加载包管理器
(load "elpa")

;; 加载并配置手工管理的插件包
(load "plugins")

;; 字体设置
(when window-system (load "font-config"))

;; GTD 模式设置
(load "gtd")

;; 加载键盘设置
(load "keyboard-config")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("23b85026ec3dfa3b1c4e170b83b1e9f4e7828c44f1f32fb427d5252e66e60b7b" "9fd20670758db15cc4d0b4442a74543888d2e445646b25f2755c65dcd6f1504b" default)))
 '(package-selected-packages
   (quote
    (fuzzy auto-complete auto-compile history markdown-mode tabbar git-emacs git-el yasnippet tabbar-ruler pymacs markdown-toc markdown-mode+ ecb)))
 '(safe-local-variable-values (quote ((encoding . utf-8))))
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
