## 取れなくする
    execute as @e[type=minecraft:trident,tag=!check] if entity @s run data remove entity @s Trident.tag.Enchantments
    execute as @e[type=minecraft:trident,tag=!check] if entity @s run data modify entity @e[type=minecraft:trident,tag=!check,limit=1] pickup set value 0b
    execute as @e[type=minecraft:trident] if entity @s run tag @s add check

## 攻撃数
    execute unless entity @s[team=Vampire] run scoreboard players add @s lance 1
    execute unless entity @s[team=Vampire] run execute if score @s lance matches 2 run kill @s
    execute unless entity @s[team=Vampire] run execute if score @s lance matches 2 run scoreboard players set @s lance 0

## リセット
    advancement revoke @s only core:trident_kill