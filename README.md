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
