#!/bin/bash
#算术运算 通过双小括号实现 要比expr好用的多
a=60;b=56
((c=$a+$b,d=$a*$b,e=$a%7))
echo $c $d $e $f
##浮点运算可以通过bc来实现 下面这句话的意思是，启动bc，然后在bc中执行echo输出的这两个命令
x=$(echo "scale=4;$a*3.14" | bc)
echo $x
#双中括号 比较表达式的封装符
# 数值比较
if [[ $a -gt $b ]]
then
    echo "a is greater than b"
elif [[ $a -lt $b ]]
then
    echo "a is less than b"
else
    echo "a is equal to b"
fi
#-eq 相等，-gt 大于，-ge 大于等于，-lt 小于，-le 小于等于
#字符串比较 在双中括号里面，支持c风格的表达式 
s1="wky2";s2="wky1"
if [[ $s1 > $s2 || $s1 == $s2 ]]
then
    echo "s1 is greater or equal to s2"
elif [[ $s1 < $s2 ]]
then
    echo "s1 is less to s2"
else
    echo "strange"
fi
#逻辑取反
if [[ ! $s1 < $s2 ]]
then
    echo "s1 greater or equal to s2"
else
    echo "s1 is less to s2"
fi
#文件判断
fileDir=$(dirname $(readlink -f $0))
fn="${fileDir}/schedule.doc"
# -e 路径是否存在 -f 路径是否是文件 -d 路径是否为目录
if [[ -e $fn && ! -d $fn ]]
then
    echo "${fn} exists but is not a directory"
fi
#for and while
i=0
s=0
o=0
while [[ $i -lt 100 ]]
do
    ((o=$i%2))
    if [[ $o -eq 1 ]]
    then
        ((s=$s+$i*$i))
    fi
    ((i=$i+1))
done
echo $s
o=0;s=0
for i in $(seq 1 100)
do
    ((o=$i%2))
    if [[ $o -eq 1 ]]
    then
        ((s=$s+$i*$i))
    fi
done
echo $s
