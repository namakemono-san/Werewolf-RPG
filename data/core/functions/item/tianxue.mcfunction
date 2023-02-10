## 表示
    particle minecraft:enchant ~ ~2 ~ 0 0 0 0.7 50 force @s
    tellraw @s ["",{"text": "[","color":"red","italic":false,"bold":true},{"text":"人狼ＲＰＧ","color":"red","italic":false},{"text":"] ","color":"red","italic":false,"bold":true},{"text": "天啓の呪符 を使用しました"}]

## 有効化
    scoreboard players set @s tianxue_use 1

## リセット
    scoreboard players set @s tianxue 0
    kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper"}}]