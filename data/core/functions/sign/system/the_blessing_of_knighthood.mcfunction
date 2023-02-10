## 表示
    particle minecraft:end_rod ~ ~ ~ 0.4 0.4 0.4 0 15 force @a[tag=clicked]
    playsound minecraft:block.anvil.place master @a[tag=clicked] ~ ~ ~ 0.5 0.5
    tellraw @a[tag=clicked] ["",{"text": "[","color":"red","italic":false,"bold":true},{"text":"人狼ＲＰＧ","color":"red","italic":false},{"text":"] ","color":"red","italic":false,"bold":true}, {"selector":"@s","color":"white","italic":false},{"text": " に 騎士の加護 を使用しました"}]

## 発動
    execute as @s[team=Villager] run scoreboard players set @s the_blessing_of_knighthood 1

## リセット
    clear @a[tag=clicked] golden_horse_armor 1
