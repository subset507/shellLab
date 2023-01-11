#!/bin/bash
#何为一个变量？即一个符号，以及一个值的集合，符号可以取到集合中的任何一个值。在编程语言中有多种变量类型，例如数值，字符串，数组
#数值类型
x=100
#字符串
fileDir=$(dirname $(readlink -f $0))
echo $fileDir
#一个文本型输出
out=$(seq 1 100)
echo $out
#数组
arr=($out)
echo ${arr[50]}
#获取数组的全部元素
echo ${arr[*]}
#获取arr的全部的key
echo ${!arr[*]}
#关联数组
declare -A dt
dt["name"]="wky"
dt["age"]=36
dt["iq"]=135
dt["wife"]="lzy"
for key in ${!dt[*]}
do
    echo "$key,${dt[$key]}"
done

