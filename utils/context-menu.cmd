@echo off

rem Ϊע������ Emacs �Ҽ��˵�
rem �������ļ��� emacs\bin Ŀ¼������Ҽ���ѡ���Թ���Ա��ʽ���С�


set EMACS_BIN=%~dp0
set RUNEMACS=%EMACS_BIN%runemacs.exe
set EMACSCLIENTW=%EMACS_BIN%emacsclientw.exe

if not exist %RUNEMACS% (
    echo �뿽�����ļ��� emacs\bin Ŀ¼��Ȼ���Թ���ԱȨ�����С�
    exit /b 1
)

set REG=32
if "%PROCESSOR_ARCHITECTURE%" == "AMD64" set REG=64


@echo on
reg add HKEY_CLASSES_ROOT\AllFilesystemObjects\Shell\Emacs /reg:%REG% /t REG_SZ /d "ʹ��&Emacs��" /f
reg add HKEY_CLASSES_ROOT\AllFilesystemObjects\Shell\Emacs\command /reg:%REG% /t REG_SZ /d "\"%EMACSCLIENTW%\" -n -a \"%RUNEMACS%\" \"%%1\"" /f
