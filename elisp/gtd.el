;; 基于 org-mode 展开 GTD 功能的基础配置

;; 来源参考
;; http://www.cnblogs.com/Open_Source/archive/2011/07/17/2108747.html
;; https://github.com/emacs-china/Spacemacs-rocks/issues/2
;; http://doc.norang.ca/org-mode.html
;; https://github.com/CodeFalling/wiki/wiki/Orgmode-as-GTD-system
;; 用Org-mode实现GTD(重点看这个)
;; http://www.cnblogs.com/holbrook/archive/2012/04/17/2454619.html
;; 使用emacs进行时间管理(1)——org-mode基本操作
;; http://blog.csdn.net/ab748998806/article/details/51176213

;; TODO keywords
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE" "MEETING"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "Purple" :weight bold)
              ("DONE" :foreground "royal blue" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "dark grey" :weight bold)
              ("MEETING" :foreground "forest green" :weight bold)
              ("COMPANY" :foreground "forest green" :weight bold)
              ("CAR" :foreground "forest green" :weight bold)
              ("PHONE" :foreground "forest green" :weight bold))))
;;
;; Standard key bindings
(global-set-key "\C-c\ l" 'org-store-link)
(global-set-key "\C-c\ a" 'org-agenda)
(global-set-key "\C-c\ b" 'org-iswitchb)
