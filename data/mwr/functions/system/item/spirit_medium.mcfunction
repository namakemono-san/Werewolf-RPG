## 表示
    tellraw @s ["",{"text": "[","color":"red","bold":true},{"text":"人狼ＲＰＧ","color":"red"},{"text":"] ","color":"red","bold":true},{"text": "死亡者 ","color":"white"},{"score":{"name": "deaths","objective": "temporary"}},{"text": "人\n","color": "white"},{"text": "[","color":"red","bold":true},{"text":"人狼ＲＰＧ","color":"red"},{"text":"]  ","color":"red","bold":true},{"selector":"@a[tag=deaths]","color": "aqua","separator": ["\n",{"text": "[","color":"red","bold":true},{"text":"人狼ＲＰＧ","color":"red"},{"text":"]  ","color":"red","bold":true}]}]
    kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:gunpowder"}}]

## リセット
    scoreboard players set @s spirit_medium 0