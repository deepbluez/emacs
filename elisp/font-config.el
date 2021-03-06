;; -*- encoding: utf-8 -*-

;; 编辑器字体配置

;; Windows 默认配置英文为 Monaco 字体，中文为雅黑。字号11，缩放设置为1.2
;; Linux: DejaVu Sans Mono 和雅黑字体显示效果也很好。
;; MacOS: Menlo, 中文雅黑字体需要安装，缩放设置为1.3；冬青黑体简体中文与 Source Code Pro 配合较好
;; 其他字体： Source Code Pro 等
;; TODO: face-font-rescale-alist 并未生效，使用冬青黑体时，英文字号12对应中文字号14

;; 中英文字体对比测试行，互相对齐表明中英文字体大小一致。
;; ----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-
;; 一一十一一十一一十一一十一一十一一十一一十一一十一一十一一十一一十一一十一一十
;; 字符外观对照表
;; abcdefghijklmnopqrstuvwxyz
;; ABCDEFGHIJKLMNOPQRSTUVWXYZ
;; 1234567890
;; ~!@#$%^&*()-=_+[]{};:'"<>,./?|\

(setq default-english-font '("Source Code Pro" "Menlo" "DejaVu Sans Mono" "Monaco" "Consolas" "Monospace" "Courier New"))
(setq default-english-size ":pixelsize=12")
(setq default-chinese-font '("冬青黑体简体中文" "微软雅黑" "文泉驿等宽微米黑" "新宋体" "宋体" "黑体"))
(setq default-chinese-size 14)

;; ----------------------------------------------------------------------
;; 下面的设置可以自动从系统中检索并设置可用字体
;; 来源参考：
;;     http://zhuoqiang.me/torture-emacs.html
;;     http://baohaojun.github.io/blog/2012/12/19/perfect-emacs-chinese-font.html

(require 'cl)

;; 判断某个字体在系统中是否存在
(defun font-exist (font)
  (if (null (x-list-fonts font))
      nil
    t))

(defun make-font-string (font-name font-size)
  (if (and (stringp font-size)
           (equal ":" (string (elt font-size 0))))
      (format "%s%s" font-name font-size)
    (format "%s %s" font-name font-size)))

(defun set-font (english-fonts
		 english-font-size
		 chinese-fonts
		 &optional chinese-font-size)
  "english-font-size 应该设置成 \":pixelsize=18\" 格式或整数。
如果 chinese-font-size 是 nil，将使用 english-font-size 值"
  (let ((en-font (make-font-string
		  (find-if #'font-exist english-fonts)
		  english-font-size))
	(zh-font (font-spec :family (find-if #'font-exist chinese-fonts)
			    :size chinese-font-size)))

    ;; 设置默认英文字体
    (message "设置英文字体为 %s" en-font)
    (set-face-attribute 'default nil :font en-font)

    ;; 设置默认中文字体
    (message "设置中文字体为 %s" zh-font)
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
			charset zh-font))))

(set-font
 default-english-font default-english-size
 default-chinese-font default-chinese-size)



;; 修正字体无法正确缩放的问题
;; TODO: 这一段暂无作用，需要直接设置中文字体大小
(setq face-font-rescale-alist '(
				("冬青黑体简体中文" . 1.3)
				("微软雅黑" . 1.3)
				("Microsoft Yahei" . 1.2)
				("WenQuanYi Zen Hei" . 1.2)
				))

;; 设置 C-鼠标滚轮 调整字体大小
(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
    (global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
    (global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)
    ))
 ((string-equal system-type "darwin")   ; Mac OS X
  (progn
    (message "TODO:Mac OS X")
    ))
 ((string-equal system-type "gnu/linux") ; linux
  (progn
    (global-set-key (kbd "<C-mouse-4>") 'text-scale-increase)
    (global-set-key (kbd "<C-mouse-5>") 'text-scale-decrease)
    ))
)
