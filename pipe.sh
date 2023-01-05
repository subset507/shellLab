#!/bin/bash
#bash中的piping可以实现将一个命令1的输出重定向到命令2，作为命令2的输入，写作command1 | command2
#bc是bash内置的计算器，可以实现expr无法实现的浮点数运算。bc的最一般的使用方式是通过交互式窗口。在shell脚本中，则是通过管道来实现
echo "scale=4;(2.777 - 1.4744)/3" | bc
#scale=4表示精确到小数点后四位，也可以同bc来计算指数或者开平方
echo "2^10" | bc
echo "scale=3;sqrt(10)" | bc
