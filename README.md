## userテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|nickname|string|null: false|
|email|string|null: false|
|encrypted_password|string|null: false|
### Association
- has_many: tweets
- has_many: comments

## tweetテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|brand_id|integer|null: false|
|camera_id|integer|null: false|
|sensor_id|integer|null: false|
|resolution_id|integer|null: false|
# |price|integer|null: false| 要らない可能性あり。
|user|references|null: false, foreign_key: true|
### Association
- belongs_to: user
- has_many: comments

## commentテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user|references|null: false, foreign_key: true|
|tweet|references|null: false, foreign_key: true|
### Association
- belongs_to: user
- belongs_to: tweet
