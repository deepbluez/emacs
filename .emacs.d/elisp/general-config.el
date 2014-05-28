;; -*- encoding: utf-8 -*-

;; Emacs 通用配置文件


;; ----------------------------------------------------------------------
;; 操作系统专有配置


;; ----------------------------------------------------------------------
;; 文件和编辑配置

;; 在行首 C-k 时，同时删除该行
(setq-default kill-whole-line t)

;; 自动的在文件末增加一新行
(setq require-final-newline t)

;; 当光标在行尾上下移动的时候，始终保持在行尾。
(setq track-eol t)

;; 设置 kill-ring 队列为200
(setq kill-ring-max 200)

;; ----------------------------------------------------------------------
;; 界面配置

;; 以 y/n 代替 yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; 显示光标为一条直线
;; (setq-default cursor-type 'bar)

;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线
(mouse-avoidance-mode 'animate)

