Another Chinese Translation of Neural Networks and Deep Learning
================================================================

This is another (work in progress) Chinese translation of Michael Nielsen's
[Neural Networks and Deep Learning](http://neuralnetworksanddeeplearning.com/),
which is originally my learning notes of this free online book. It's written in
LaTeX for better look and cross-reference of math equations and plots. And I
borrowed some finished work from
https://github.com/tigerneil/neural-networks-and-deep-learning-zh-cn.

## Compile the LaTeX Source Code

To compile the source code to a PDF file, please make sure you have a latest TeX
system installed. You can download and install a TeX distribution for your
platform from http://tug.org.

It's recommended to install
- [Tex Live 2015](http://tug.org/texlive/) or later for Linux
- [MacTex 2015](http://tug.org/mactex/) or later for Mac OS X

Also, please make sure you have these font packages installed: roboto,
sourcecodepro, as these fonts are required in typesetting. You can install them
with `tlmgr` command.

### Prepare Fonts

Run

``` shell
$ ./bootstrap.sh
```

This is a simple shell script to download Google Noto CJK SC into `fonts/`. You
can also manually download the
[font file](https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCJKsc-hinted.zip)
and unarchive to `fonts/`.

### Generate PDF

Run

``` shell
$ make
```

to typeset and generate the PDF document. Or use your favorite GUI TeX
application, but choose XeLaTeX as the typeset engine to support the chinese
fonts.
