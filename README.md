# pcl-semi-template

## 初回だけ実行する
```
mkdir pcl-semi
```
## 毎回実行する準備
pcl-semiディレクトリで
```
git clone https://github.com/YoheiSaito/pcl-semi-template
mv pcl-semi-template pcl-semiN #Nはゼミの回数
cd $_
```
### 初回のみ stanfordレポジトリをダウンロード
stanford 3d repositoryをダウンロード済みの人は不要
```
./compile.sh download
```

## vscodeを開く
```
./compile.sh edit
```
## コンパイル
```
./compile.sh build
```
## 実行
```
./compile.sh run コマンド ライン 引数など
```
## コンパイルして実行
```
./compile.sh コマンド ライン 引数など
```
