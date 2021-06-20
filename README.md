## usersテーブル

| Column   | Type       | Options                |
| -------- | ---------- | ---------------------- |
| nickname | string     | null: false            |
| email    | string     | null: false            |
| password | string     | null: false            |

### association
has_many spendings
has_many houseworks

## spending テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| account           | integer    | null: false                    |
| start_time        | datetime   | null: false                    |
| shopping_category | integer    | null: false                    |
| amount            | integer    | null: false                    |
| user_id           | references | null: false, foreign_key: true |

### association
belongs_to user

## housework

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| work_category     | integer    | null: false                    |
| point             | integer    | null: false                    |
| user_id           | references | null: false, foreign_key: true |

### association
belongs_to user