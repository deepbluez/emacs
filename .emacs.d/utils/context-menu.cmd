@echo off

rem 为注册表添加 Emacs 右键菜单
rem 拷贝此文件到 emacs\bin 目录，点击右键，选择“以管理员方式运行”


set EMACS_BIN=%~dp0
set RUNEMACS=%EMACS_BIN%runemacs.exe
set EMACSCLIENTW=%EMACS_BIN%emacsclientw.exe

if not exist %RUNEMACS% (
    echo 请拷贝此文件到 emacs\bin 目录，然后以管理员权限运行。
    exit /b 1
)

set REG=32
if "%PROCESSOR_ARCHITECTURE%" == "AMD64" set REG=64


@echo on
reg add HKEY_CLASSES_ROOT\AllFilesystemObjects\Shell\Emacs /reg:%REG% /t REG_SZ /d "使用&Emacs打开" /f
reg add HKEY_CLASSES_ROOT\AllFilesystemObjects\Shell\Emacs\command /reg:%REG% /t REG_SZ /d "\"%EMACSCLIENTW%\" -n -a \"%RUNEMACS%\" \"%%1\"" /f
