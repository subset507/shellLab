#!/bin/bash
#目标路径名支持使用通配符 在shell脚本中表示路径尽量不要用双引号的字符串 因为无法支持例如通配符之类的特殊功能
grep "print" ~/shellLab/*.{hpp,cpp,py}
#通过添加-E参数，搜索的pattern是支持正则表达式的
grep -E "[0-9]+" ~/shellLab/*.{hpp,cpp,py}
#如果需要显示所找到的pattern在目标文件中的行数，可以增加-n参数
#grep -E --line-number "[0-9]+" ~/shellLab/*.py
#linux命令设置可选参数时，既可以写一道杠，也可以写两道杠。一道杠后边接单个字母，两道杠后接完整的单词。前者是unix风格的语法，后者是GNU风格的语法，前者的优点是简洁，后者的优点是可读性更强。例如，--line-number即是GNU风格的代码，表示在输出时显示所找到的pattern位于目标文件的哪一行，该参数换成unix风格的语法则只需要写-n，即
#grep -E -n "[0-9]+" ~/shellLab/*.py
#事实上上述命令可以写的更简洁，-E -n可以合并为-En
#更多的关于grep的功能可以使用grep --help来查看

