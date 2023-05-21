# Efficiency_jekyll_theme

------------------

<!-- START ORIGINAL README.md -->

# ultralight

[![Build Status](https://travis-ci.org/kotet/ultralight.svg?branch=master)](https://travis-ci.org/kotet/ultralight)

![shot](https://user-images.githubusercontent.com/8435623/34344912-0665d490-ea2e-11e7-9bd8-919a6ced2a40.png)

Ultralight is super-lightweight responsive super Jekyll theme.
It can be hosted on GitHub Pages/IPFS.

[demo1](https://kotet.github.io/ultralight/)

### Output size:

- [minima@affcd93](https://github.com/jekyll/minima/tree/affcd93be22e960afd2be08e6891d99b31bcf920): 256K
- **[ultralight@9bffabb](https://github.com/kotet/ultralight/tree/9bffabb42cc64c0be563d5c3d3977ab6bb5761b9): 40K**

### Pagespeed:

![screenshot from 2017-12-26 10-17-46](https://user-images.githubusercontent.com/8435623/34344205-7f316c3e-ea26-11e7-8fcb-1184ee929c8d.png)

## Usage

### GitHub Pages

```console
$ git clone https://github.com/kotet/ultralight.git && cd ultralight
$ git remote set-url origin https://github.com/yourname/yourname.github.io.git
$ git push origin master
```

### IPFS

```console
$ git clone https://github.com/kotet/ultralight.git && cd ultralight
$ bundle && bundle exec jekyll build
$ ipfs add -r _site/
```

#### Internal link

On IPFS, all internal links must be relative links.
You can use `relative` template like this:

```
[link]({% include relative %}{% post_url your-article-filename %})
```

<!-- END ORIGINAL README.md -->

------------------

<!-- START NEW README.md -->

# Efficiency_jekyll_theme

我在[kotet/ultralight](https://github.com/kotet/ultralight)的基础上开发了这个项目. 感谢[kotet](https://github.com/kotet).

经过我们的测试, 目前此项目比Jekyll官方的原版项目生成速度提高了18%(仅仅是我们的测试)

## 更改

仅出示更改内容

有些代码我们只是简写了, 或者更换书写格式, 但是我认为对速度很有帮助.

#### [_layouts/default.html](/_layouts/default.html)

原
```
<html lang="{{ page.lang | default: site.lang | default: "en" }}">
```

改
```
<html>
```

原
```
    <header>
        <a class="site-title" href="{% include relative %}" >{{ site.title }}</a>
        <div style="display: inline-block">
            {% for my_page in site.pages %}{% if my_page.title and my_page.noindex != true %}
             | <a href="{% include relative %}{{ my_page.url | relative_url }}">{{ my_page.title }}</a>
            {% endif %}{% endfor %}
        </div>
        
    </header>
    <hr>
    <main>
    <div class="content-wrapper">
    {{ content }}
    </div>
    </main>
    <hr>
    <footer>
        {% capture footer-md %}{% include footer.md %}{% endcapture %}{{ footer-md | markdownify }}
    </footer>
```

改

```
<div>
    <a class="site-title" href="{% include relative %}" style="font-size: 125%;">{{ site.title }}</a>
    <div style="display: inline-block"> | <a href="{% include relative %}/about/">About</a> | <a href="{% include relative %}/tags/">Tags</a></div>
</div><hr>
<main>
<div class="content-wrapper">{{ content }}</div>
</main>
<hr><div><p style="text-align: center;">{% capture footer-md %}{% include footer.md %}{% endcapture %}{{ footer-md | markdownify }}</p></div>
```

#### [_layouts/page.html](/_layouts/page.html)

原

```
<article>
    <div class="post-header">
        <h1>{{ page.title | escape }}</h1>
    </div>
    {{ content }}
</article>
```

改

```
<article><div class="post-header"><h1>{{ page.title | escape }}</h1></div>{{ content }}</article>
```

#### [_layouts/post.html](/_layouts/post.html)

原
```
        <h1>
            <a href="{% include relative %}/tags/#{{ page.tags[0] | downcase }}">#{{ page.tags[0] }}</a> 
            {{ page.title | escape }}
        </h1>
        <p class="post-info">
                <time datetime="{{ page.date | date_to_xmlschema }}">{{ page.date | date: "%b %-d, %Y" }}</time>
            {% for tag in page.tags %}
             | <a href="{% include relative %}/tags/#{{ tag | downcase }}">#{{ tag }}</a>
            {% endfor %}
        </p>
```

改
```
    <h1><a href="../../../" style="font-size: 75%;color:grey;">Back</a>  {{ page.title | escape }}</h1>
    <p class="post-info">
        <time datetime="{{ page.date | date_to_xmlschema }}">{{ page.date | date: "%b %-d, %Y" }}</time>
        {% for tag in page.tags %}
            | <a href="{% include relative %}/tags/#{{ tag | downcase }}">#{{ tag }}</a>
        {% endfor %}
    </p>
```

#### [_sass/base.scss](/_sass/base.scss)

原
```
body {
    color: $text-color;
    margin: 0;
    word-break: break-word;
    font-family: Helvetica,sans-serif;
}
ul {
    padding-left: 10px;
    margin: 10px;
}
li {
    margin-bottom: 10px;
}
article {
    padding: 0 20px 0 20px;
}
header,footer {
    padding: 10px;
}
.home {
    padding: 1em;
}
.site-title {
    color: $text-color;
    font-weight: bold; 
}
.post-counter {
    font-weight: bold; 
}
.post-info {
    margin: auto;
}
table {
    th,td {
        border-bottom: 1px solid $border-color;
        border-right: 1px double $border-color;
    }
}
.content-wrapper {
    max-width: 800px;
    margin-right: auto;
    margin-left: auto;
    * {
        max-width: 100%;
    }
}
```

改
```
$link-text: #000000;
body {color: $text-color;margin: 0;word-break: break-word;font-family: sans-serif;}
ul {padding-left: 10px;margin: 10px;}
li {margin-bottom: 10px;}
article {padding: 0 20px 0 20px;}
.home {padding: 1em;}
.site-title {color: $text-color;font-weight: bold; }
.post-counter {font-weight: bold; }
.post-info {margin: auto;}
table {th,td {border-bottom: 1px solid $border-color;border-right: 1px double $border-color;}}
.content-wrapper {max-width: 800px;margin-right: auto;margin-left: auto;* {max-width: 100%;}}
a {color:$link-text;text-decoration:none;}
a:visited {color:$link-text;text-decoration:none;}
a:hover {color:#27dce2;text-decoration:none;}
a:active {color:$link-text;text-decoration:none;}
```

#### [_includes/head.html](/_includes/head.html)

原
```
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    {% include head/style.html %}
    <title>{% if page.tags %}#{{ page.tags[0] }} {% endif %}{% if page.title %}{{ page.title | escape }} - {{ site.title | escape }}{% else %}{{ site.title | escape }}{% endif %}</title>
    <meta name="description" content="{{ page.excerpt | default: site.description | strip_html | normalize_whitespace | truncate: 160 | escape }}">
    {% if page.mathjax %}{% include head/mathjax.html %}{% endif %}
    {% if jekyll.environment == 'production' and site.google_analytics %}{% include head/google-analytics.html %}{% endif %}
    {% if jekyll.environment == 'production' and site.twitter_cards %}{% include head/twitter-cards.html %}{% endif %}
</head>
```

改
```
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1"><link rel="shortcut icon" href="{% include relative %}/img/favicon.ico" type="image/x-icon">{% include head/style.html %}<title>{% if page.title %}{{ page.title | escape }} - {{ site.title | escape }}{% else %}{{ site.title | escape }}{% endif %}</title><meta name="description" content="{{ page.excerpt | default: site.description | strip_html | normalize_whitespace | truncate: 160 | escape }}">{% if page.mathjax %}{% include head/mathjax.html %}{% endif %}</head>
```

其余均为[kotet](https://github.com/kotet)编写, 使用[MIT](./LICENSE)

<!-- END NEW README.md -->

------------------
