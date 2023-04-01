## 表示
    tellraw @s ["",{"text": "[","color":"red","italic":false,"bold":true},{"text":"人狼ＲＰＧ","color":"red","italic":false},{"text":"] ","color":"red","italic":false,"bold":true},{"text": "人狼："},{"selector": "@r[team=Werewolf,limit=1]","color":"dark_red"}]

## リセット
    kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:end_crystal"}}]
    scoreboard players set @s accomplice 0