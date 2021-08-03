## アプリケーション名
人と暮らす家計簿アプリ

## アプリケーションの概要
共働き夫婦や同棲カップルに向けた家計簿アプリです。  
家計の支出を登録し、お互いの支出を管理し精算しやすくします。  
また、家事を登録することで家事ポイントが溜まり、自分の負担を減らすことができます。  
そして、家事に対してありがとうを送ることができます。

## URL
https://hitokura-app.herokuapp.com/

## 制作背景
夫と自身で家事の負担に偏りがあることに日々不満に感じており、友人にもそういった悩みが多く、ネット上の男女４００人アンケートでも家事の負担比率に不満を感じ、喧嘩をしている夫婦が約半数という結果が出ています。  
そこで、家事を可視化し共有することと併せて、何かメリットを用意することができれば、日々の家事のストレスが和らぐのではないかと考え、家事を支出として換算することで、家事を行った方の金銭の負担を軽減するという機能を考えました。  
また、家事をした方は、相手からの感謝の気持ちを受け取るだけで、気持ちが軽くなるため、ありがとうを送ることができる機能を付けようと考えました。  
（参考：https://www.instagram.com/p/CEGGNCDJM5C/?utm_source=ig_web_copy_link）

## 実装予定の内容
・支出を登録する機能  
・家事登録・編集・削除機能  
・家事に対してのありがとう登録機能  
・月の合計支出金額、家事ポイント、ありがとうポイントを表示する機能  
・月のカテゴリーごとの支出の比率を表示する機能

## DEMO
### トップページ
![トップページ](https://gyazo.com/95d8165c59edb979ae6bf7938878dd34.gif)
### マイページ
![マイページ](https://gyazo.com/ef2fa1ff1c7f42da98d989d456975b55.gif)


## DB設計

### usersテーブル

| Column   | Type       | Options                |
| -------- | ---------- | ---------------------- |
| nickname | string     | null: false            |
| email    | string     | null: false            |
| password | string     | null: false            |

#### association
has_many spendings
has_many houseworks

### spending テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| account           | integer    | null: false                    |
| start_time        | datetime   | null: false                    |
| shopping_category | integer    | null: false                    |
| amount            | integer    | null: false                    |
| user_id           | references | null: false, foreign_key: true |

#### association
belongs_to user

### housework

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| work_category     | integer    | null: false                    |
| points             | integer    | null: false                    |
| user_id           | references | null: false, foreign_key: true |

#### association
belongs_to user
