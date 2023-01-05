#!/bin/bash
#算术运算 通过双小括号实现 要比expr好用的多
a=43;b=56
((c=$a+$b,d=$a*$b,e=$a%7))
echo $c $d $e $f
#浮点运算可以通过bc来实现 下面这句话的意思是，启动bc，然后在bc中执行echo输出的这两个命令
f=$(echo "scale=4;$a*7.77" | bc)
echo $f
#当然也可以用python，不过似乎要慢不少，为了脚本效率计，还是尽量用bash的内置命令
g=$(echo "x=$a*7.77;print(x)"| python)
echo $g
#下列形式要更好一些？这是python提供的标准调用方式之一
h=$(python -c "x=$a*7.77;print(x)")
echo $h
#数值比较
b=$a
if [ $a -eq $b ]
then
    echo "a equals to b"
fi
#-eq 是否相当， -gt great than 是否大于 -ge greater and equal 大于等于 -lt less than 小于 -le 小于等于
#字符串比较
#= 是否相等 \>是否大于 \<是否小于
s1="wky";s2="lzy"
if [ $s1 \> $s2 -o $s1 = $s2 ]
then
    echo "s1 is greater or equal to s2"
fi
#逻辑取反
if [ ! $s1 \< $s2 ]
then
    echo "s1 is not less than s2"
fi
#文件判断
fileDir=$(dirname $(readlink -f $0))
fn="${fileDir}/schedule"
# -e文件（含目录）是否存在 -d 文件是否是目录
if [ -e $fileDir -a -d $fileDir ]
then
    echo "${fileDir} exists and is a directory"
fi
