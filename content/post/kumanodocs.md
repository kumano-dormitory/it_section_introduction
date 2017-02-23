---
author: "Yusuke Sangenya"
date: 2017-02-24
linktitle: 資料システム
title: 資料システム
description: 熊野寮内部で使われているブログサイトのようなもの
thumbnail: "python.svg"
weight: 5
---

寮生用のWebアプリです。

寮には、月に二回開かれるホームルームのようなものがありまして、このWebアプリは、その会議で読む資料を印刷するためのものです。
寮生以外は中身を見せられない事になってるので、そこはご了承ください。

## 解説

ソースコードは[kumanodocs](https://github.com/kumano-dormitory/kumanodocs)にあります。PythonのWebフレームワークDjangoで作成しました。

ちょっと読んだらわかると思うんですが、汚いコードです。テストもないし（↓）。
<script src="http://gist-it.appspot.com/github/kumano-dormitory/kumanodocs/blob/master/document_system/tests.py"></script>
リファクタリングするのも大変です（というか怖くて手が出ない）。
これにテストを付けてリファクタリングするより、 Railsとか使って一から新しいの作ったほうが早そうですね。

あと、これは実際にサイトを訪れてもらわないとわからないことなんですが、デザインが悪くて使いづらいです。
Webデザイナーいないし、しょうがないね。

## 結論

- 熊野寮情報技術セクションは、Webアプリを書ける人材を募集しています。言語はなんでも構いません。
- 熊野寮情報技術セクションは、Webデザイナーを募集しています。gitとかも使えるとベターですね。
