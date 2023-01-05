#!/bin/bash
#while循环 两个独立的简短命令可以写在同一行，用分号分开即可
i=0;sum=0
while [ $i -le 100 ]
do
    ((i=$i+1,sum=$sum+$i*$i))
    echo $i $sum
done
#在双括号中可以较为方便地处理变量并进行算术运算，在双括号里面支持C风格的代码，并且可以通过逗号分隔处理多个表达式，要比expr方便得多
#for循环
for i in $(seq 1 100)
do 
    echo $i
done
