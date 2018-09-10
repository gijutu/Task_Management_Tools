# README
実技演習課題シリーズの演習用のリポジトリです。

# 開発したアプリケーションの概要
タスク管理システムを開発いたしました。  
本演習課題READMEに書かれていた要件仕様をもとに、仕様内容と合致したアプリケーションを作成しました。

# 開発環境
##言語・ミドルウェアなど
* Ruby 2.5.1
* Ruby on Rails 5.2.1
* Sqlite

## セットアップ
* cd task_management_tool
* bundle install --path vendor/bundler
* heroku create
* heroku run rails db:migrate

### herokuへデプロイ
* gitへコミット
* herokuでアプリケーション作成(heroku create)
* アセットをコンパイル(rails assets:precompile RAILS_ENV=production)
* herokuへデプロイ(git push heroku master)
* heroku へデータベース移行(heroku run rails db:migrate)
