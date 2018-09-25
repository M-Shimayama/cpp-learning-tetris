@echo off
set workspaceFolder=%~dp0
echo %workspaceFolder%
REM BMPファイルをオブジェクトファイルにする
windres -i %workspaceFolder%/block.rc -o %workspaceFolder%/obj/block.o

REM コンパイル
g++ -mwindows -g -o %workspaceFolder%/bin/tetris.exe tetris.cpp %workspaceFolder%/obj/block.o
