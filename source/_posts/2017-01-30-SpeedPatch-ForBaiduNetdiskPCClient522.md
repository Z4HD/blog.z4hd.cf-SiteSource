---
title: 可用于百度云PC客户端5.5.2的去限速补丁
tags:
  - 百度云
  - 百度网盘
id: 300
categories:
  - 技术
photo: /gallery/e-cloud.png
date: 2017-06-25 13:27:52
---
{% admonition danger 方法失效 %}
野蛮屑度过于死妈，即使是注入过的客户端仍会遭受限速迫害，，，
{% endadmonition %}

<!--MORE-->

#### 2017年10月4日更新：

本方法已**<span style="color:red;">失效</span>**。

#### 2017年6月25日更新：

死妈百度会无视设置在后台偷偷更新你的百度云客户端，

不过想要干烂也不难，在hosts文件中添加如下两行即可。（该方法具有时效性，可能随着时间的推移而失效）

```hosts
0.0.0.0    update.pan.baidu.com
0.0.0.0    issuecdn.baidupcs.com
```

![自动升级功能惨遭干烂的百度网盘客户端](/gallery/BDY-20170625152236.png)

### 补丁介绍

飘云阁论坛大神制作的补丁。按照压缩包内的使用方法注入，即可轻松实现移除百度网盘PC客户端的限速措施，达到满速下载的目的。

![效果图](/gallery/BDY-20170625151522.png)

> <span style="color:#ff2828;font-weight:bold;">注意</span>：
>
> *   该补丁不是提速补丁，有些资源本身没有速度，用了这个补丁也没有用。
> *   Windows Defender可能报毒，是否使用自行斟酌，本人不承担一切责任。

**本人亲测支持百度网盘5.5.2客户端。<span style="color:red">不支持5.5.5！</span>**
<!--more-->

### 原帖链接

_[百度限速云去限速5.4.5劫持补丁 - 『 软件更新区 』 - 飘云阁(PYG官方论坛)](http://www.chinapyg.com/forum.php?mod=viewthread&amp;tid=84673)_

### 下载地址

1.  [http://pan.baidu.com/s/1kUEEoJX](http://pan.baidu.com/s/1kUEEoJX)提取码：_xgjg_（原帖中需回复可见的内容）
2. ***由于方法已确认失效，故不再提供其他下载链接。***本文章仅做**存档**目的。