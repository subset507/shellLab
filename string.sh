#!/bin/bash
#字符串即可用单引号也可用双引号包含
name1='wky';name2="wky"
echo $name1 $name2
#但只有双引号的字符串可以做字符串变量替换，所以明智的做法是，一律采用双引号
words="hello, my name is ${name1}, pleased to meet you"
echo $words
