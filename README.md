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

#既存のサブモジュールを削除し自分のリポジトリに変更します
git submodule deinit -f DiscoverMeteor_Ja
git rm -rf DiscoverMeteor_Ja
git submodule add -f <あなたのforkしたDiscoverMeteor_Ja>

#本家から取得するためにremote addする
cd DiscoverMeteor_Ja
git remote add dm git@github.com:DiscoverMeteor/DiscoverMeteor_Ja.git
＃本家から取り込み
git pull dm  master


#ポートフォワード設定（passはデフォルトならtcuser）
ssh -f -N -L 4567:localhost:4567 docker@$(boot2docker ip)

＃起動
./run_middleman.sh

```

[http://localhost:4567](http://localhost:4567) でアクセスできるはずです。

##普段の手順

1. 本家から最新版を取得
```sh
#移動と更新
cd middleman4DM/DiscoverMeteor_Ja
＃本家から取り込み
git pull dm  master

```

2. 編集作業を行う

3. 編集内容を自分のリポジトリへプッシュ
```
git add <対象ファイル>
git commit -m "編集内容概略"
git push
```


4. 自分のリポジトリのページに飛んでプルリクエストを作成
