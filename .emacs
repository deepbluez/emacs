;; -*- coding: utf-8 -*-

;; 设置默认的载入路径
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/themes")

;; 载入 molokai 主题的附加工具，能够给状态栏提供更丰富的提示
(load "molokai-theme-kit")
(setq molokai-theme-kit t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (obsidian)))
 '(custom-safe-themes (quote ("17a4e8ceb0320f07f4087c85ad4a452fc82d8b7b70d16eda8e3f4df138223399" "d2b1a25a5e2ed8815fe07a7ebf1b27e7095966bd0eb5afb8d0d1e85ef4809998" "" default)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Yahei Mono" :foundry "outline" :slant normal :weight normal :height 98 :width normal)))))


