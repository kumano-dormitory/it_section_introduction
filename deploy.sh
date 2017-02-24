#!/bin/bash

set -eu

HUGO_DIR=./hugo
HUGO_BIN="${HUGO_DIR}/hugo"
HTML_DIR=./public

# install hugo
if [ ! -e "${HUGO_DIR}" ];then
  HUGO_PACKAGE=hugo.tgz
  mkdir ${HUGO_DIR}

  cd ${HUGO_DIR}
  wget -O ${HUGO_PACKAGE} https://github.com/spf13/hugo/releases/download/v0.16/hugo_0.16_linux-64bit.tgz
  tar -xvf ${HUGO_PACKAGE}
  cd ..
fi

# kumano-domitory.github.ioをclone
if [ ! -d "./kumano-dormitory.github.io" ];then
  git clone https://${GH_TOKEN}@github.com/kumano-dormitory/kumano-dormitory.github.io.git > /dev/null 2>&1
fi

# サイトを生成
ls
${HUGO_BIN}

git config --global user.email "info@kumano-ryo.com"
git config --global user.name "Travis CI"

# commit & push
cp -r ${HTML_DIR}/* kumano-dormitory.github.io/
cd kumano-dormitory.github.io
git add .
d=`date +"%Y/%m/%d %k:%M:%S"`
git diff --cached --exit-code --quiet || git commit -m "Update blog at ${d}"
git push origin master > /dev/null 2>&1
