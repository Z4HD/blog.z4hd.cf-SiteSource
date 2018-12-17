---
title: 让网页自适应各种宽度的方法
tags:
  - HTML
  - 技巧
  - 特色
id: 21
categories:
  - 技术
date: 2016-12-29 19:03:40
---

原理其实很简单，只用了一行meta标签来设置网页的宽度为设备宽度。

代码如下
``` HTML
<meta name="viewport" content="width=device-width" />
```
记得把这个标签加在`<head>`里