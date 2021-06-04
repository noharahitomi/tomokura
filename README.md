## usersテーブル

| Column   | Type       | Options                |
| -------- | ---------- | ---------------------- |
| name_1   | string     | null: false            |
| name_2   | string     | null: false            |
| email    | string     | null: false            |
| password | string     | null: false            |

## spending テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| shopping_category | integer    | null: false                    |
| amount            | integer    | null: false                    |
| user_id           | references | null: false, foreign_key: true |


## house_work_point

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| work_category     | integer    | null: false                    |
| point             | integer    | null: false                    |
| user_id           | references | null: false, foreign_key: true |