# What's this
- CentOS6.5にNodeJSの開発環境を作るrecipe
- AWS CLIをインストール
  - [Getting Set Up with the AWS Command Line Interface](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-set-up.html)
- AWSのElastic beanstalkへdeployするようにEB Commandline interface (CLI) 3.xをsetup
  - [EB コマンドラインインターフェイス (CLI) 3.x のセットアップ](http://docs.aws.amazon.com/ja_jp/elasticbeanstalk/latest/dg/eb-cli3-getting-set-up.html)
  - [EB CLI 3.x 入門](http://docs.aws.amazon.com/ja_jp/elasticbeanstalk/latest/dg/eb-cli3-getting-started.html)
- pythonのcookbookをchef supermarketからインストール
  - https://supermarket.chef.io/cookbooks?utf8=%E2%9C%93&q=python
    - Knifeタブをクリックすると出てくる下記コマンドでinstallした
    - ```knife cookbook site install python```
  - pythonだけでなく、pipとvirtualenvもインストールしてくれる

# References
- [VagrantとChef SoloでNode.jsの開発環境を作る](http://kb1111.blogspot.jp/2013/07/vagrantchef-solonodejs.html)

# 使い方
- 
# chef-nodejs-aws-devenv

# メモ

## python_pip
- aws-cliの中でinclude_recipeをしてpython_pipというresourceを使ってawscliをインストールしている
- aws-cliを単発で動かそうとするとエラーになるが、run_listを一連の流れで実行すると通る
  - つまり、bundle exec knife solo cook <node名> で実行
