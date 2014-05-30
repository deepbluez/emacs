;; -*- coding: utf-8 -*-

;; 设置默认的载入路径
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

;; 
(load "font-config")

;; 加载键盘设置
(load "keyboard-config")
