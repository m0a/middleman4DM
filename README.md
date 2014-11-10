middleman for DiscorverMeteor
============
DiscoverMeteor翻訳のためのmiddlemanをDockerで作りました。
OSX(yosemite)だと、結局作れませんでしたので。

##構築

本リポジトリは編集対象が私のリモートリポジトリになっています。
(github.com/m0a/DiscoverMeteor_Ja)
ですので、削除して自分用のリポジトリを設定することところから始めてください。

```sh

＃本環境をクローンします
git clone git@github.com:m0a/middleman4DM.git
cd middleman4DM

#既存のサブモジュールを削除します
git rm -rf DiscoverMeteor_Ja
git submodule add <あなたのforkしたDiscoverMeteor_Ja>
git submodule update --remote

#ポートフォワード設定（passはデフォルトならtcuser）
ssh -f -N -L 4567:localhost:4567 docker@$(boot2docker ip)

＃起動
./run_middleman.sh

```

[http://localhost:4567](http://localhost:4567) でアクセスできるはずです。
