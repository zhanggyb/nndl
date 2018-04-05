# Another Chinese Translation of Neural Networks and Deep Learning

This is another (work in progress) Chinese translation of Michael Nielsen's
[Neural Networks and Deep Learning](http://neuralnetworksanddeeplearning.com/),
originally my learning notes of this free online book. It's written in
LaTeX for better look and cross-referencing of math equations and plots. And I
borrowed some finished work from
https://github.com/tigerneil/neural-networks-and-deep-learning-zh-cn.

## Compile the LaTeX Source Code

To compile the source code to a PDF file, please make sure you have a latest TeX
system installed. You can download and install a TeX distribution for your
platform from http://tug.org.

It's recommended to install
- [Tex Live](http://tug.org/texlive/) 2015 or later for Linux
- [MacTex](http://tug.org/mactex/) 2015 or later for Mac OS X

### Check out source code

Use git to clone this repository and the code samples as a sub module:

```shell
$ git clone --recursive https://github.com/zhanggyb/nndl.git
```

or

```shell
$ git clone https://github.com/zhanggyb/nndl.git
$ cd nndl
$ git submodule update --init --recursive
```

### Prepare Fonts

Download and install these free fonts:

- [Google Noto CJK](https://www.google.com/get/noto/help/cjk/)
- [Adobe Source Serif Pro](https://github.com/adobe-fonts/source-serif-pro)
- [Adobe Source Code Pro](https://github.com/adobe-fonts/source-code-pro)

In most Linux distributions, these fonts can be installed with the default package manager.

Mac user could install with [Homebrew](https://brew.sh/):

```shell
$ brew tap caskroom/fonts
$ brew cask install font-noto-sans-cjk font-noto-serif-cjk font-source-code-pro font-source-serif-pro
```

### Generate PDF

Run

``` shell
$ make
```

to typeset and generate the PDF document. Or use your favorite GUI TeX
application, but choose `XeLaTeX` as the typeset engine to support the chinese
fonts.

