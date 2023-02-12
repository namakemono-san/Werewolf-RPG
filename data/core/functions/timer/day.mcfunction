## 時間変更
    time set noon
    kill @e[type=skeleton]

## スコアボードの処理
    scoreboard players set hour temporary 0

## リセット
    scoreboard players set @a axe_use 0
    scoreboard players set @a fortune_teller_heart_used 0

## 効果切れ
    scoreboard players set @a tianxue_use 0
    scoreboard players set @a the_blessing_of_knighthood 0

## ボスバーの表示処理
    bossbar set timer color yellow
    bossbar set timer name [{"score":{"name":"date","objective":"temporary"}},{"text":"日目 昼"}]

## タイトルの表示処理
    title @a subtitle [{"text":"- ","color":"gold","bold":true},{"score":{"name":"date","objective":"temporary"},"italic":true},{"text":"日目","color":"gold","bold":true,"italic":true},{"text":" -","color":"gold","bold":true}]
    title @a title ["",{"text":"\u263C","color":"gold"},{"text":" 昼 ","color":"yellow","bold":true},{"text":"\u263C","color":"gold"}]