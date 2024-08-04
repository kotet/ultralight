# ultralight

[![Build Status](https://github.com/kotet/ultralight/actions/workflows/build-check.yml/badge.svg)](https://github.com/kotet/ultralight/actions/workflows/build-check.yml)
[![](https://github.com/kotet/ultralight/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/kotet/ultralight/actions/workflows/pages/pages-build-deployment)

![Screen Shot 2024-05-08 at 22 57 41](https://github.com/kotet/ultralight/assets/8435623/2d624b83-a818-4433-a301-2c7d5c8471ab)

Ultralight is super-lightweight responsive super Jekyll theme.
Inspired by [CNN Lite](https://lite.cnn.com).

It can be hosted on GitHub Pages/IPFS.

- [demo1: kotet.jp/ultralight/](https://kotet.jp/ultralight/)
- [demo2: kotet.jp/ultralight-demo (gem-based)](https://kotet.jp/ultralight-demo/)
  - [repository: kotet/ultralight-demo](https://github.com/kotet/ultralight-demo)

### Output size:

- [minima@2863624](https://github.com/jekyll/minima/tree/2863624b903b17f838d6ce8d2f77900fa9d3c864): 388K
- **[ultralight@e7a7bce](https://github.com/kotet/ultralight/tree/e7a7bce911eed44bf4d1d1818b118cee67a3f538): 56K**

### Pagespeed:

[![image](https://github.com/kotet/ultralight/assets/8435623/037a8982-66cc-46ae-9926-ccca7471f3f4)](https://pagespeed.web.dev/analysis/https-kotet-jp-ultralight/xvkytq8rwg?hl=en&form_factor=mobile)

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
