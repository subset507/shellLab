#!/bin/bash
#生成一个数组
arr=($(seq 1 100))
#访问arr的所有元素
echo ${arr[*]}
#获取arr的元素的个数
echo ${#arr[*]}
#获取arr的全部的key
echo ${!arr[*]}
#定义关联数组，即字典 declare为bash的内置命令，即声明变量，添加参数-A表示该变量为关联数组，即key可以是字符串
declare -A dt
dt["aaa"]=1
dt["bbb"]=2
dt["ccc"]=3
echo ${!dt[*]}

