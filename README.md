# Enjoy The Winter
スキー場のレビュー投稿サイト(随時機能を実装していきます)

## 概要
関東県内で人気のスキー場のレビューを投稿、閲覧できます。

<img width="1427" alt="スキー場一覧" src="https://user-images.githubusercontent.com/67572650/92084969-1f8f0280-ee03-11ea-8c86-88890ebec2a2.png">

<img width="1440" alt="レビュー画面" src="https://user-images.githubusercontent.com/67572650/92085019-303f7880-ee03-11ea-88bd-69fdd16a042a.png">





## 制作背景
幼い頃から祖母にスキー場に何度も連れていってもらい、初心者や子連れでも安心できる所や、玄人向けの場所など色々なスキー場を見てきました。そのため、スキー場に詳しくない方が自分にはどんなスキー場があっているかを口コミで確認できるようなサイトを作りたいと思いました。

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