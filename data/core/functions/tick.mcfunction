## スケルトンの出現位置を可視化
    execute if score start temporary matches 0 as @e[type=minecraft:armor_stand,tag=skeleton_spawner] at @s run particle minecraft:dust 0.92 0.57 0.6 0.5 ~ ~0.1 ~ 0 0 0 0 1

## 村人の置き換え
    execute as @e[type=minecraft:armor_stand,tag=battle_villager] at @s run function core:store/battle/summon
    execute as @e[type=minecraft:armor_stand,tag=auxiliary_villager] at @s run function core:store/auxiliary/summon

## 経験値削除
    xp set @a 0 levels
    xp set @a 0 points
    kill @e[type=minecraft:experience_orb]

## 毎tick動作
    effect give @a minecraft:resistance 1000000 0 true

    execute as @a[tag=op] run function admin:tick
    function core:item/spawn_launcher

## ゲーム中に動作する毎tick
    execute if score start temporary matches 1 run function core:game/tick