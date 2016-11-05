# 深蓝的 Emacs 配置 #

这个配置结合了网上诸多大神的工作，对 Emacs 系统进行较多的定制，使其能够满足日常的文本和脚本编辑功能。

所有配置项目均使用 GNU Emacs 24 在 Windows 下测试，不保证其他版本可正常使用。

* update @ 2016-11
* 整合更多组件，并配合 MacOS 更新
* 支持 Emacs 25

## 基本说明 ##

所有的配置项都位于 `~/.emacs.d` 目录中，其中分成了多个不同的子目录，按照功能分成不同的目录和配置文件。

独立的 .el 配置文件位于 `~/.emacs.d/elisp` 目录，这个目录已被加入 `load-path` ，在 `.emacs` 中使用 `load` 指令直接引用，如 `(load font-set)`

## 安装方式 ##
在 CentOS / Ubuntu / MacOS X 等环境：

cd ~/.emacs.d

rm -fr auto-save-list/

git clone https://github.com/deepbluez/emacs.git .
git submodule update

安装后需要初始化插件：

emacs ~/.emacs.d/utils/first-init.el

进入 emacs 后按 `M-x eval-buffer` 来更新插件。

### Windows 下的安装 ###
TODO

### 外观配置 ###

所有的主题文件都保存于 `~/.emacs.d/themes` 目录，并在 `.emacs` 中加入系统主题列表。

增加了 `obsidian` 和 `molokai` 主题，并使用 `obsidian` 作为默认主题。在 Emacs 中，可以 使用 `M-x customize-theme RET` 选择自己需要的主题。

### 字体设置 ###

字体设置的配置文件位于 `~/.emacs.d/elisp/font-set.el`，更为详细的说明参见文件中的注释，默认英文字体被设置为 *Consolas*，中文被设置为 *微软雅黑*。

### 插件设置 ###
手工安装的插件位于 `~/.emacs.d/plugins` 目录。
