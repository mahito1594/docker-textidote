# Run `TeXtidote` on Docker
This builds an image which contains [TeXtidote](https://github.com/sylvainhalle/textidote); Spelling, grammer and style checking on LaTeX documents.
The image is based on `adoptopenjdk/openjdk8:alpine-slim`.

## Requirements
- [Docker](https://www.docker.com/)

## Builds
After download this repository, run `docker build`.  For example,

``` sh
$ git clone https://github.com/mahito1594/docker-textidote.git
$ cd docker-texidote
$ docker build -t mahito1594/textidote .
```

## Usage
Basic usage is

``` sh
docker run -rm -v $PWD:/work mahito1594/textidote [options for TeXtidote] your-document.tex
```

where `mahito1594/textidote` is name of the built image.

For instance, in order to view HTML report in a web browser, you should:

``` sh
$ docker run --rm -v $PWD:/work mahito1594/textidote --check en --output html your-document.tex > report.html
$ open report.html # If you use Linux, use other command such as `xdg-open` instead.
```

For more detail, please refer to the [README of TeXtidote](https://github.com/sylvainhalle/textidote).

## Acknowledgement
- [Docker](https://www.docker.com)
- [adoptopenjdk/openjdk8](https://hub.docker.com/r/adoptopenjdk/openjdk8)
- [TeXtidote](https://github.com/sylvainhalle/textidote): Written by Sylvain Hallé, released under GNU General Public License 3.
