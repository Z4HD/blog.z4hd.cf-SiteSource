---
title: PyInstaller打包单EXE时封装额外的资源文件
tags:
  - Python
  - PyInstaller
categories: 技术
photo: /gallery/pyinstaller-draft1c-header-trans.png
date: 2017-12-02 17:05:26
---

# 封装资源文件的必要性

1. 制作绿色便携的单EXE可执行文件
2. 有些文件不希望让最终用户轻易看到
3. ~~计算机文件系统内不是法外之地，将资源文件释放至临时文件夹以加强管理是取得2020年全面小康伟大胜利的重要步骤！~~

<!--MORE-->

## 目录

@[toc]

{% admonition info INFO %}
以下内容在[PyInstaller](http://www.pyinstaller.org/) 3.3上实测有效
{% endadmonition %}

## 建立配置文件

键入下列指令建立spec配置文件，参数与直接使用PyInstaller时使用的参数相同，程序会自动帮你添加到配置文件中。

```shell
pyi-makespec -F -w –icon=<YourICON>.ico <YourPyScript>
```

_使用类似`pyinstaller -F XXX.spec`编译二进制程序时添加的参数可能没有效果。_

## 编辑配置文件

依据实际情况添加配置文件的引用。

### datas

此法适用于添加单个或几个文件

找到`Analysis()`的`datas=[]`，每个文件一个tuple（元组）格式如下：

```python
a = Analysis(
            ...
            datas=[('文件在当前系统中的位置','文件在可执行文件运行时相对于可执行文件的位置')],
            ...
            )
```

使用通配符可以同时添加所有匹配的文件

```python
a = Analysis(
     ...
     datas= [ ('/mygame/sfx/*.mp3', 'sfx' ) ],
     ...
     )
```

>更多高级用法请阅读PyInstaller文档（英文）：[Adding Data Files](https://pyinstaller.readthedocs.io/en/stable/spec-files.html#adding-data-files)

### Tree

此法适用于添加一整个目录的文件

1. 在spec文件中添加

```python
extra_tree = Tree('./myimages', prefix = 'myimages')
```

2. 在`a.scripts`等a.开头文件所在的部分后添加`extra_tree`

_表示还没有深入理解Tree，先复制粘贴了其他神触的步骤。_

>更多高级用法请阅读PyInstaller文档（英文）：[The Tree Class](https://pyinstaller.readthedocs.io/en/stable/advanced-topics.html#the-tree-class)

## 修改代码引用

在脚本开头添加下列代码：

```python
import sys, os
if getattr(sys, 'frozen', False):  # 运行于 |PyInstaller| 二进制环境
    basedir = sys._MEIPASS
else:  # 运行于一般Python 环境
    basedir = os.path.dirname(__file__)
```

找到所有涉及相对路径的文件操作，在路径前添加`basedir+`。示例：

```python
    with open(os.path.normpath(basedir + '\\ui.kv'), 'r', encoding='UTF-8') as f1:
        kv_str = f1.read()
```

其中 `os.path.normpath()` 用于标准化路径。详细信息请自行查阅 [Python 文档](https://docs.python.org/3.6/library/os.path.html?highlight=os%20path%20normpath#os.path.normpath)。

经此法修改的脚本可同时在单exe和使用解释器运行时使用相对路径读取打包的资源文件。

## 编译

接下来的步骤就比较轻松了，直接使用PyInstaller编译然后到`./dict`文件夹中找到你刚编译出来的可执行文件即可。

```shell
pyinstaller <YourPyScript>.spec
```

## 参考资料

- [PyInstaller打包单个bundle时封装额外的资源文件](http://www.tinyedi.com/pyinstallerda-bao-dan-ge-bundleshi-feng-zhuang-e-wai-de-zi-yuan-wen-jian/)

## 额外说明

```log
[CRITICAL] [Window      ] Unable to find any valuable Window provider.
```

如果要打包的程序使用了Kivy框架，则spec文件需做点修改，否则打包出的EXE由于依赖缺失无法正常加载窗口。

```python
# spec文件头部添加
from kivy.deps import sdl2, glew

#修改EXE(),添加需在**第一个关键词参数的前面**进行。
exe = EXE(
          ...
          *[Tree(p) for p in(sdl2.dep_bins + glew.dep_bins)],
          ...
          )
```
