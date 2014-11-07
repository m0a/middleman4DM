middleman4DM
============
DiscoverMeteor翻訳のためのmiddlemanをDockerで作りました。
OSX(yosemite)だと、結局作れませんでしたが、ubuntuでも結構めんどくさかったです。

使い方はまあわかるかと思います。

最初にsshでポートフォワードの設定をしておくといいと思います。
```sh
ssh -f -N -L 4567:localhost:4567 docker@$(boot2docker ip)
```
