---
author: "Yusuke Sangenya"
date: 2017-02-24
linktitle: 熊野寮祭 告知ページ
title: 熊野寮祭 告知ページ
description: 寮祭の企画一覧を表示するサイトをHakyllで作った話
thumbnail: "ryosai.jpg"
weight: 5
---

[熊野寮祭 告知ページ](https://kumano-dormitory.github.io/ryosai/)

2016年の年末に *スクショ* がTwitterで出回ったので、見たことがある方もいると思います。

寮祭企画の

- 企画名
- 日程
- 場所
- 簡単な説明
- 企画者が提出した画像

を、日付ごとに一覧にしたものです。

2016年以前は、寮祭パンフレットのPDFをホームページで公開しているだけで、情報にアクセスしやすいとは言い難い状況でした。
レスポンシブな告知ページを新たに設けた事によって、スマートフォンからも企画一覧を見ることができるようになり、多くの方の目に触れるようになりました。

## 解説

このサイトは、[Hakyll](https://jaspervdj.be/hakyll/)を使って作成されました。
ソースコードは[ryosai-jekyll](https://github.com/kumano-dormitory/ryosai-jekyll)にあります。

## なんでHakyllなの？

他の静的サイトジェネレーターに比べて、Hakyllは柔軟にサイトの構造を決めることができます。
また、データベースやCSVファイルなどから似たようなページを大量に生成するなどの用途にも使えます。
こうした理由から、Hakyllを採用しました。

実際に、寮祭告知ページを生成する際には、

1. CSVファイルに書かれた企画一覧を、通常企画・常設企画・ゲリラ企画の三種類にグループ化
2. 通常企画はさらに、開催日によってグループ化
3. それぞれのグループを一つのWebページにまとめる

という、[それなりに複雑な構造のページ](https://kumano-dormitory.github.io/ryosai/events.html)を、自動で生成しています。

## 結論

- Haskeller募集

