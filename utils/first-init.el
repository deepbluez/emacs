;; -*- encoding: utf-8 -*-

;; 首次安装后，执行此脚本以安装相关插件

(package-refresh-contents)
(package-install 'tabbar)
(package-install 'tabbar-ruler)
(package-install 'ecb)
(package-install 'pymacs)
(package-install 'yasnippet)
(package-install 'markdown-mode)
(package-install 'markdown-mode+)
(package-install 'markdown-toc)
(package-install 'history)

;; auto-complete 和依赖项目
(package-install 'fuzzy)
(package-install 'auto-complete)
