# Enjoy The Winter
スキー場のレビュー投稿サイト(随時機能を実装していきます)

## 概要
関東県内で人気のスキー場のレビューを投稿、閲覧できます。


## 機能
- deviseを用いたログイン、ログアウト機能の実装
- haml/SASS記法と、命名規則BEMを使ったマークアップ
- ajaxを使用したインクリメンタルサーチの実装
- ajaxを使用したレビュー投稿の非同期化
- AWSを用いたデプロイ

## 追加予定機能
- レビューに対してのいいね機能
- udemyで学習中のVue.jsの導入

## 環境
- Ruby 2.6.5
- Rails 6.0.0




## users table
|Column|Type|Options|
|------|----|-------|
|name|string|null false|
|email|string|null false, unique true|
|password|string|null false, unique true, length:minimum:7|

### Association
- has_many :comments

## areas table
|Column|Type|Options|
|------|----|-------|
|name|string|null false|
|addres|string|
|tel|string|
|adult_price|integer|
|child_price|integer|


### Association
- has_many :comments

## comments table
|Column|Type|Options|
|------|----|-------|
|comment|string|
|user_id|integer|null false, foreign_key true|
|area_id|integer|null false, foreign_key true|

### Association
- belongs_to :area
- belongs_to :user