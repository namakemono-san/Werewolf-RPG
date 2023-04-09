## 殴られたときの音
    playsound minecraft:item.totem.use master @a ~ ~1 ~ 0.5

## 使われていない場合
    execute if entity @s[team=!Vampire] run execute if score @s the_blessing_of_knighthood matches 0 run kill @s
    execute if score hour temporary matches 0 if entity @s[team=Vampire] run execute if score @s the_blessing_of_knighthood matches 0 run kill @s

## 騎士の加護を使われていた場合
    execute if score @s the_blessing_of_knighthood matches 1 run tellraw @s ["",{"text": "[","color":"red","bold":true},{"text":"人狼ＲＰＧ","color":"red"},{"text":"] ","color":"red","bold":true},{"text": "騎士の加護 の効果が発動しました"}]
    execute if score @s the_blessing_of_knighthood matches 1 run playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.5 1.25
    execute if score @s the_blessing_of_knighthood matches 1 run scoreboard players set @s the_blessing_of_knighthood 0

## リセット
    advancement revoke @s only mwr:axe_kill