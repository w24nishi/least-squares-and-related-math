#!/bin/bash
cp ts.tex build
cp -r images build
docker run --rm -v $PWD/build:/workdir paperist/alpine-texlive-ja uplatex ts.tex
docker run --rm -v $PWD/build:/workdir paperist/alpine-texlive-ja uplatex ts.tex
docker run --rm -v $PWD/build:/workdir paperist/alpine-texlive-ja uplatex ts.tex
docker run --rm -v $PWD/build:/workdir paperist/alpine-texlive-ja dvipdfmx ts.dvi
