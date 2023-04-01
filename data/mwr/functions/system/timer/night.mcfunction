## 時間変更
    time set midnight

## スコアボードの処理
    scoreboard players set @a axe_use 0
    scoreboard players add date temporary 1
    scoreboard players set hour temporary 1

## スケルトン召喚
    schedule function mwr:system/spawn_skeleton 3t

## ボスバーの処理
    bossbar set mwr:timer color purple
    bossbar set mwr:timer name [{"score":{"name":"date","objective":"temporary"}},{"text":"日目 夜"}]

## タイトル表示
    title @a subtitle [{"text":"- ","color":"gold","bold":true},{"score":{"name":"date","objective":"temporary"},"italic":true},{"text":"日目","color":"gold","bold":true,"italic":true},{"text":" -","color":"gold","bold":true}]
    title @a title ["",{"text":"\u263D","color":"yellow"},{"text":" 夜 ","color":"dark_blue","bold":true},{"text":"\u263D","color":"yellow"}]