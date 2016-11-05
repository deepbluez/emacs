;; -*- encoding: utf-8 -*-

;; 手工插件包管理器

;; (require 'ibuffer)

;; git-emacs
(add-to-list 'load-path "~/.emacs.d/plugins/git-emacs")
(require 'git-emacs)

;; org-mode
(setq load-path (cons "~/.emacs.d/plugins/org-mode/lisp" load-path))
(setq load-path (cons "~/.emscs.d/plugins/org-mode/contrib/lisp" load-path))
(require 'org-loaddefs)
