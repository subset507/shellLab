#!/bin/bash
#输出重定向 将标准输出重定向到out文件
echo "hello, my name is wangkunyu, i am 36 years old" > out
#>会覆盖原文件的内容，若想保留原文件的内容，可以追加输出重定向>>
echo "i live in shenzhen" >> out
#若想将stdout和stderr合并输出到out，可以写
echo "i like the weather of shenzhen" 2>&1 >> out
