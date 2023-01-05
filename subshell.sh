#!/usr/bin/bash
output=$(pwd;echo $BASH_SUBSHELL)
echo $output
#多个命令写到一行，以分号隔开，先后执行
#小括号，命令替换符号。其原理是，开启一个subshell，然后在subshell中执行小括号内部的命令，在小括号前面加上$符号，可以将subshell的输出提取到当前shell中

