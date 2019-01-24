# Re:VIEW 執筆環境テンプレート

[Re:VIEW](https://reviewml.org/)による執筆環境のテンプレートです。

Docker および Docker Compose がインストールされている環境で動きます。

Docker イメージには [vvakame](https://github.com/vvakame) さんの [Re:VIEW image for Docker](https://github.com/vvakame/docker-review) を用いています。

## 動作要件

* Docker
    * 1.13.0+
* Docker Compose

## 使い方

### PDF を生成する

```
make
```

`workdir/` 直下に `book.pdf` という名前で生成されます。

`book.pdf` は git の追跡対象から外されています。

### textlint を実行する

```
make lint
```

### 実行前の状態に戻す

```
make clean
```

実行すると `book.pdf` が削除されるので注意してください。

## トラブルシューティング

### `make: 'book.pdf' is up to date.` と表示されて PDF が更新されない

一度 `touch workdir/index.re` または `make clean` を実行してから `make` を実行してください。


## 参考リンク

* [Re:VIEW](https://reviewml.org/)
* [Re:VIEW ナレッジベース](https://review-knowledge-ja.readthedocs.io/ja/latest/index.html)
* [Re:VIEW image for Docker](https://github.com/vvakame/docker-review)
