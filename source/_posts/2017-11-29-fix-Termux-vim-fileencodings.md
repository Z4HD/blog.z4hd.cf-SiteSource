---
title: 解决Termux中vim显示中文乱码的问题
tags:
  - Linux
  - Termux
  - Vim
categories:
  - 技术
date: 2017-11-29 22:16:00
photo:
---
Shell运行下列指令：
```shell
echo "set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936\nset termencoding=utf-5\nset encoding=utf-8" >> ~/.vimrc
```
原理为向 `.vimrc` 中添加和文字编码处理有关的配置项。理论上适用于任何环境中的vim。

### 参考文章
- http://www.cnblogs.com/joeyupdo/archive/2013/03/03/2941737.html
