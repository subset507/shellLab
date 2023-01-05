#!/bin/bash
#source fileName在当前的bash环境中读取并执行fileName文件
#source的作用类似于python中的import，可以很方便地实现代码模块化和代码模块再利用
source ./function.sh
s=$(getSum 1 2 3 4 5 6 7 8 9 10)
echo $s
