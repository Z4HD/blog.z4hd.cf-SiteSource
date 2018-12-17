---
title: 现在只有关于页面才会显示大图了！
date: 2017-10-29 11:51:00
tags: 
  - JavaScript
categories: 站务相关
photo: Null
---

之前Hiero主题的关于页面大图不能正常显示，于是我经过一段时间研究，深化贯彻落实党的先进思想，暂时解决了[@iTimeTraveler](https://itimetraveler.github.io)神触尚未解决的大图判断逻辑难题。
<!-- MORE -->

# 未解之谜
参见[Issue34](https://github.com/iTimeTraveler/hexo-theme-hiero/issues/34)
>在`header-post.ejs`中添加下列代码：

>``` ejs
<%= page.link %> <br />
<%= page.source %> <br />
<%= page.layout %> <br />
<%= page.path %> <br />
<%= page.path=='about/index.html' %> <br />
```

>使用`hexo server`查看时能够正常返回值（示例为about界面）

>```
undefined 
about/index.md 
about 
about/index.html 
true 
```

>使用`hexo g`生成静态文件后则任何页面都会返回下列值：

>```
undefined <br />
404.html <br />
page <br />
404.html <br />
false <br />
```

# 临时的解决办法
我把判断是否显示大图的逻辑放到前端来执行，通过判断链接中有无`about`来辨别是否为关于页面。

``` JavaScript
location.pathname.match('about')
```

也许这么做可能存在潜在的问题，求神触留言告知更好的办法，3Q2X。

{% githubCard user:iTimeTraveler repo:hexo-theme-hiero theme:medium align:center%}