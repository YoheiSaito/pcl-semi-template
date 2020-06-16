# pcl-semi-template

## 準備
### 初回のみ
stanford 3d repositoryをダウンロード済みの人は不要
pcl-semiディレクトリで
```
git clone https://github.com/YoheiSaito/pcl-semi-template pcl-semi1
./compile.sh download
```
### 2回目以降
pcl-semiディレクトリで
```
git clone https://github.com/YoheiSaito/pcl-semi-template
mv pcl-semi-template pcl-semiN #Nはゼミの回数
cd $_
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
