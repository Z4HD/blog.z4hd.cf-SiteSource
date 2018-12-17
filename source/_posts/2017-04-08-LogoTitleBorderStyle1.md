---
title: 本站site-titile的CSS框线效果
date: 2017-04-08 11:09:23
tags:
  - CSS
categories:
  - 技术
photo: /gallery/ScreenShot-20170415183847.png
---
### 示例

<style>
/*标题框线特效*/
.site-title {
    color: #fff;
    display: block;
    text-decoration: none;
    position: relative;
    padding: 11px 15px 9px 17px;
    text-align: center;
	}
.site-title  {
	color: #fff;
	display: block;
	font-family: "Poppins", "Roboto", sans-serif;
	text-decoration: none;
	text-align: center;
}
.site-title::after, .site-title::before {
	content: "";
	position: absolute;
	left: 0px;
	right: 0px;
	height: 12px;
}
.site-title::before {
	top: 0px;
	border-top: 2px solid currentColor;
	border-left: 2px solid currentColor;
	border-right: 2px solid currentColor;
}
.site-title::after {
	bottom: 0px;
	border-bottom: 2px solid currentColor;
	border-left: 2px solid currentColor;
	border-right: 2px solid currentColor;
}
/*框线特效结束*/

</style>
<h2 class="site-title">ESU</h2>
<!-- More -->
#### CSS

```CSS
<style>
/*标题框线特效*/
.site-title {
    color: #fff;
    display: block;
    text-decoration: none;
    position: relative;
    padding: 11px 15px 9px 17px;
    text-align: center;
	}
.site-title  {
	color: #fff;
	display: block;
	font-family: "Poppins", "Roboto", sans-serif;
	text-decoration: none;
	text-align: center;
}
.site-title::after, .site-title::before {
	content: "";
	position: absolute;
	left: 0px;
	right: 0px;
	height: 12px;
}
.site-title::before {
	top: 0px;
	border-top: 2px solid currentColor;
	border-left: 2px solid currentColor;
	border-right: 2px solid currentColor;
}
.site-title::after {
	bottom: 0px;
	border-bottom: 2px solid currentColor;
	border-left: 2px solid currentColor;
	border-right: 2px solid currentColor;
}
/*框线特效结束*/
</style>

```
#### HTML

```HTML
<h2 class="site-title">ESU</h2>
```

## 使用方法

### 如果您使用hiero主题
直接向`\themes\hiero\source\css\hiero.css`中插入如下代码即可。
```CSS
/*标题框线特效*/
.site-title {
    color: #fff;
    display: block;
    text-decoration: none;
    position: relative;
    padding: 11px 15px 9px 17px;
    text-align: center;
	}
.site-title a  {
	color: #fff;
	display: block;
	font-family: "Poppins", "Roboto", sans-serif;
	text-decoration: none;
	text-align: center;
}
.site-title>a::after, .site-title>a::before {
	content: "";
	position: absolute;
	left: 0px;
	right: 0px;
	height: 12px;
}
.site-title>a::before {
	top: 0px;
	border-top: 2px solid currentColor;
	border-left: 2px solid currentColor;
	border-right: 2px solid currentColor;
}
.site-title>a::after {
	bottom: 0px;
	border-bottom: 2px solid currentColor;
	border-left: 2px solid currentColor;
	border-right: 2px solid currentColor;
}
/*框线特效结束*/
```

### 如果您使用其他主题或另作它用
请自行修改示例代码中对应的CSS选择器。

## 说明
以上样式提取自WordPress主题“[Refur](http://www.tefox.net/product/refur/)”