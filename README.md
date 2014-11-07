middleman for DiscorverMeteor
============
DiscoverMeteor翻訳のためのmiddlemanをDockerで作りました。
OSX(yosemite)だと、結局作れませんでしたが、ubuntuでも結構めんどくさかったです。

使い方はまあわかるかと思います。

最初にsshでポートフォワードの設定をしておくといいと思います。
```sh
ssh -f -N -L 4567:localhost:4567 docker@$(boot2docker ip)
```
以下で構築と実行
```sh
cd middleman4DM
docker build -t middleman4dm .
docker run -p 4567:4567 middleman4dm middleman
```

