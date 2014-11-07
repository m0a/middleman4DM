middleman for DiscorverMeteor
============
DiscoverMeteor翻訳のためのmiddlemanをDockerで作りました。
OSX(yosemite)だと、結局作れませんでしたが、ubuntuでも結構めんどくさかったです。


以下で構築と実行
```sh
git clone git@github.com:m0a/middleman4DM.git

ssh -f -N -L 4567:localhost:4567 docker@$(boot2docker ip)
cd middleman4DM
docker build -t middleman4dm .
docker run -p 4567:4567 -d middleman4dm middleman
open http://localhost:4567
```



