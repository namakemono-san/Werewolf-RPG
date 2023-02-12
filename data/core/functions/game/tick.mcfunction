## タイマーの動作
    function core:timer/
    function core:game/victory/

## 死亡判定
    execute store result score deaths temporary if entity @a[tag=deaths]
    execute as @a[scores={death=1..}] run gamemode spectator @s
    execute as @a[scores={death=1..}] run tag @s add deaths
    execute as @a[scores={death=1..}] run scoreboard players reset @s death

## いらないものを削除
    clear @a minecraft:glass_bottle
    execute as @a[team=!Werewolf] run clear @s minecraft:stone_axe
    execute as @a[team=!Accomplice] run clear @s minecraft:end_crystal

## アイテムを使用する
    function core:game/noon_axe
    function core:item/stan_grenade
    execute as @e[type=minecraft:trident] run data modify entity @s Trident.tag.Damage set value 248
    execute as @a[scores={lance=1}] at @s run particle minecraft:entity_effect ~ ~0.7 ~ 0.2 0.2 0.2 1 0 force @a
    execute as @a[scores={spirit_medium=1..}] run function core:item/spirit_medium
    execute as @a[scores={providence=1..}] run function core:item/providence
    execute as @a[scores={accomplice=1..}] run function core:item/accomplice
    execute as @a[scores={tianxue=1..}] run function core:item/tianxue
    execute as @a[nbt={Inventory:[{id:"minecraft:heart_of_the_sea"}]}] run function core:item/fortune_teller_heart

## スケルトン
    execute as @e[type=minecraft:skeleton] at @s if score @p[distance=..5,limit=1,sort=nearest] skeleton_attack <= @s skeleton_attacked run kill @s

    execute as @e[type=minecraft:skeleton] store result score @s health run data get entity @s Health 1
    execute as @e[type=minecraft:skeleton] if score @s pre_health > @s health run scoreboard players add @s skeleton_attacked 1
    execute as @e[type=minecraft:skeleton] store result score @s pre_health run scoreboard players get @s health

## HUD
    execute as @a[scores={fortune_teller_heart=1..}] run function core:game/fortune_teller_heart